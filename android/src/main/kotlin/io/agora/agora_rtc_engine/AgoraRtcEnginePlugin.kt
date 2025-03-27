package io.agora.agora_rtc_engine

import android.content.Context
import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.annotation.NonNull
import io.agora.iris.base.IrisEventHandler
import io.agora.iris.rtc.IrisRtcEngine
import io.agora.rtc.RtcEngine
import io.agora.rtc.base.RtcEngineRegistry
import io.flutter.BuildConfig
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.*
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.platform.PlatformViewRegistry
import kotlin.math.abs

internal class EventHandler(private val eventSink: EventChannel.EventSink?) : IrisEventHandler {
  private val handler = Handler(Looper.getMainLooper())
  override fun OnEvent(event: String?, data: String?) {
    handler.post {
      eventSink?.success(mapOf("methodName" to event, "data" to data))
    }
  }

  override fun OnEvent(event: String?, data: String?, buffer: ByteArray?) {
    handler.post {
      eventSink?.success(mapOf("methodName" to event, "data" to data, "buffer" to buffer))
    }
  }
}

open class CallApiMethodCallHandler(
  protected val irisRtcEngine: IrisRtcEngine
) : MethodCallHandler {

  protected open fun callApi(apiType: Int, params: String?, sb: StringBuffer): Int {
    val ret = irisRtcEngine.callApi(apiType, params, sb)
    if (apiType == 0) {
      RtcEngineRegistry.instance.onRtcEngineCreated(irisRtcEngine.rtcEngine as RtcEngine?)
    }
    if (apiType == 1) {
      RtcEngineRegistry.instance.onRtcEngineDestroyed()
    }

    return ret
  }

  protected open fun callApiWithBuffer(
    apiType: Int,
    params: String?,
    buffer: ByteArray?,
    sb: StringBuffer): Int {
    return irisRtcEngine.callApi(apiType, params, buffer, sb)
  }

  protected open fun callApiError(ret: Int): String {
    val description = StringBuffer()
    irisRtcEngine.callApi(
      132,
      "{\"code\":" + abs(ret) + "}",
      description
    )
    return description.toString()
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    val apiType = call.argument<Int>("apiType")
    val params = call.argument<String>("params")
    val sb = StringBuffer()

    if (BuildConfig.DEBUG) {
      when (call.method) {
        "getIrisRtcEngineIntPtr" -> {
          result.success(irisRtcEngine.nativeHandle)
          return
        }
        "forceDestroyIrisRtcEngine" -> {
          irisRtcEngine.destroy()
          result.success(true)
          return
        }
      }
    }

    if (BuildConfig.DEBUG && "getIrisRtcEngineIntPtr" == call.method) {
      result.success(irisRtcEngine.nativeHandle)
      return
    }
    try {
      val ret = when (call.method) {
        "callApi" -> {
          callApi(apiType!!, params, sb)
        }
        "callApiWithBuffer" -> {
          val buffer = call.argument<ByteArray>("buffer")
          callApiWithBuffer(apiType!!, params, buffer, sb)
        }
        else -> {
          // This should not occur
          -1
        }
      }

      if (ret == 0) {
        if (sb.isEmpty()) {
          result.success(null)
        } else {
          result.success(sb.toString())
        }
      } else if (ret > 0) {
        result.success(ret)
      } else {
        val errorMsg = callApiError(ret)
        result.error(ret.toString(), errorMsg, null)
      }
    } catch (e: Exception) {
      result.error("", e.message ?: "", null)
    }
  }
}

/** AgoraRtcEnginePlugin */
class AgoraRtcEnginePlugin : FlutterPlugin, MethodCallHandler, EventChannel.StreamHandler {
  private var binding: FlutterPlugin.FlutterPluginBinding? = null
  private lateinit var applicationContext: Context
  private lateinit var irisRtcEngine: IrisRtcEngine

  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var methodChannel: MethodChannel
  private lateinit var eventChannel: EventChannel

  private var eventSink: EventChannel.EventSink? = null
  private val handler = Handler(Looper.getMainLooper())
  private lateinit var rtcChannelPlugin: AgoraRtcChannelPlugin
  private lateinit var callApiMethodCallHandler: CallApiMethodCallHandler

  private fun initPlugin(
    context: Context,
    binaryMessenger: BinaryMessenger,
    platformViewRegistry: PlatformViewRegistry
  ) {
    applicationContext = context.applicationContext
    irisRtcEngine = IrisRtcEngine(applicationContext)
    methodChannel = MethodChannel(binaryMessenger, "agora_rtc_engine")
    methodChannel.setMethodCallHandler(this)
    eventChannel = EventChannel(binaryMessenger, "agora_rtc_engine/events")
    eventChannel.setStreamHandler(this)

    callApiMethodCallHandler = CallApiMethodCallHandler(irisRtcEngine)

    platformViewRegistry.registerViewFactory(
      "AgoraSurfaceView",
      AgoraSurfaceViewFactory(binaryMessenger, irisRtcEngine)
    )
    platformViewRegistry.registerViewFactory(
      "AgoraTextureView",
      AgoraTextureViewFactory(binaryMessenger, irisRtcEngine)
    )

    rtcChannelPlugin = AgoraRtcChannelPlugin(irisRtcEngine)
    rtcChannelPlugin.initPlugin(binaryMessenger)
  }

  override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    this.binding = binding
    initPlugin(binding.applicationContext, binding.binaryMessenger, binding.platformViewRegistry)
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    methodChannel.setMethodCallHandler(null)
    eventChannel.setStreamHandler(null)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    callApiMethodCallHandler.onMethodCall(call, result)
  }

  override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
    eventSink = events
  }

  override fun onCancel(arguments: Any?) {
    eventSink = null
  }
}
