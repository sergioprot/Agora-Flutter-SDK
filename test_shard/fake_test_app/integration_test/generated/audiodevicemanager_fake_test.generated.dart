/// GENERATED BY testcase_gen. DO NOT MODIFY BY HAND.

// ignore_for_file: deprecated_member_use,constant_identifier_names

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/foundation.dart';
import 'package:fake_test_app/main.dart' as app;
import 'package:iris_tester/iris_tester.dart';
import 'package:iris_method_channel/iris_method_channel.dart';

void audioDeviceManagerSmokeTestCases() {
  testWidgets(
    'AudioDeviceManager.enumeratePlaybackDevices',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.enumeratePlaybackDevices();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.enumeratePlaybackDevices] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.enumerateRecordingDevices',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.enumerateRecordingDevices();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.enumerateRecordingDevices] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.setPlaybackDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const String deviceId = "hello";
        await audioDeviceManager.setPlaybackDevice(
          deviceId,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.setPlaybackDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getPlaybackDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getPlaybackDevice();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getPlaybackDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getPlaybackDeviceInfo',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getPlaybackDeviceInfo();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getPlaybackDeviceInfo] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.setPlaybackDeviceVolume',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const int volume = 10;
        await audioDeviceManager.setPlaybackDeviceVolume(
          volume,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.setPlaybackDeviceVolume] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getPlaybackDeviceVolume',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getPlaybackDeviceVolume();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getPlaybackDeviceVolume] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.setRecordingDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const String deviceId = "hello";
        await audioDeviceManager.setRecordingDevice(
          deviceId,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.setRecordingDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getRecordingDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getRecordingDevice();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getRecordingDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getRecordingDeviceInfo',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getRecordingDeviceInfo();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getRecordingDeviceInfo] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.setRecordingDeviceVolume',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const int volume = 10;
        await audioDeviceManager.setRecordingDeviceVolume(
          volume,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.setRecordingDeviceVolume] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getRecordingDeviceVolume',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getRecordingDeviceVolume();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getRecordingDeviceVolume] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.setLoopbackDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const String deviceId = "hello";
        await audioDeviceManager.setLoopbackDevice(
          deviceId,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.setLoopbackDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getLoopbackDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getLoopbackDevice();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getLoopbackDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.setPlaybackDeviceMute',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const bool mute = true;
        await audioDeviceManager.setPlaybackDeviceMute(
          mute,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.setPlaybackDeviceMute] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getPlaybackDeviceMute',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getPlaybackDeviceMute();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getPlaybackDeviceMute] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.setRecordingDeviceMute',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const bool mute = true;
        await audioDeviceManager.setRecordingDeviceMute(
          mute,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.setRecordingDeviceMute] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getRecordingDeviceMute',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getRecordingDeviceMute();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getRecordingDeviceMute] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.startPlaybackDeviceTest',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const String testAudioFilePath = "hello";
        await audioDeviceManager.startPlaybackDeviceTest(
          testAudioFilePath,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.startPlaybackDeviceTest] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.stopPlaybackDeviceTest',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.stopPlaybackDeviceTest();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.stopPlaybackDeviceTest] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.startRecordingDeviceTest',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const int indicationInterval = 10;
        await audioDeviceManager.startRecordingDeviceTest(
          indicationInterval,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.startRecordingDeviceTest] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.stopRecordingDeviceTest',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.stopRecordingDeviceTest();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.stopRecordingDeviceTest] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.startAudioDeviceLoopbackTest',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const int indicationInterval = 10;
        await audioDeviceManager.startAudioDeviceLoopbackTest(
          indicationInterval,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.startAudioDeviceLoopbackTest] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.stopAudioDeviceLoopbackTest',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.stopAudioDeviceLoopbackTest();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.stopAudioDeviceLoopbackTest] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.followSystemPlaybackDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const bool enable = true;
        await audioDeviceManager.followSystemPlaybackDevice(
          enable,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.followSystemPlaybackDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.followSystemRecordingDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const bool enable = true;
        await audioDeviceManager.followSystemRecordingDevice(
          enable,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.followSystemRecordingDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.followSystemLoopbackDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        const bool enable = true;
        await audioDeviceManager.followSystemLoopbackDevice(
          enable,
        );
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.followSystemLoopbackDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.release',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.release();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint('[AudioDeviceManager.release] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getPlaybackDefaultDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getPlaybackDefaultDevice();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getPlaybackDefaultDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );

  testWidgets(
    'AudioDeviceManager.getRecordingDefaultDevice',
    (WidgetTester tester) async {
      String engineAppId = const String.fromEnvironment('TEST_APP_ID',
          defaultValue: '<YOUR_APP_ID>');

      RtcEngine rtcEngine = createAgoraRtcEngine();
      await rtcEngine.initialize(RtcEngineContext(
        appId: engineAppId,
        areaCode: AreaCode.areaCodeGlob.value(),
      ));

      final audioDeviceManager = rtcEngine.getAudioDeviceManager();

      try {
        await audioDeviceManager.getRecordingDefaultDevice();
      } catch (e) {
        if (e is! AgoraRtcException) {
          debugPrint(
              '[AudioDeviceManager.getRecordingDefaultDevice] error: ${e.toString()}');
          rethrow;
        }

        if (e.code != -4) {
          // Only not supported error supported.
          rethrow;
        }
      }

      await audioDeviceManager.release();
      await rtcEngine.release();
    },
  );
}
