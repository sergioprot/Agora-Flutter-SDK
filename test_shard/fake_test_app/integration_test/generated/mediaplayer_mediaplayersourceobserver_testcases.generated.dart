/// GENERATED BY testcase_gen. DO NOT MODIFY BY HAND.

// ignore_for_file: deprecated_member_use,constant_identifier_names

import 'dart:io';
import 'dart:async';
import 'dart:typed_data';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iris_tester/iris_tester.dart';
import 'package:iris_method_channel/iris_method_channel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import 'event_ids_mapping.dart';

void generatedTestCases(IrisTester irisTester) {
  testWidgets(
    'MediaPlayerSourceObserver.onPlayerSourceStateChanged',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onPlayerSourceStateChangedCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onPlayerSourceStateChanged:
            (MediaPlayerState state, MediaPlayerReason reason) {
          onPlayerSourceStateChangedCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const MediaPlayerState state = MediaPlayerState.playerStateIdle;
        const MediaPlayerReason reason = MediaPlayerReason.playerReasonNone;

        final eventJson = {
          'state': state.value(),
          'reason': reason.value(),
        };

        final eventIds = eventIdsMapping[
                'MediaPlayerSourceObserver_onPlayerSourceStateChanged'] ??
            [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onPlayerSourceStateChangedCompleter.isCompleted) {
              onPlayerSourceStateChangedCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onPlayerSourceStateChangedCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onPositionChanged',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onPositionChangedCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onPositionChanged: (int positionMs, int timestampMs) {
          onPositionChangedCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const int positionMs = 10;
        const int timestampMs = 10;

        final eventJson = {
          'positionMs': positionMs,
          'timestampMs': timestampMs,
        };

        final eventIds =
            eventIdsMapping['MediaPlayerSourceObserver_onPositionChanged'] ??
                [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onPositionChangedCompleter.isCompleted) {
              onPositionChangedCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onPositionChangedCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onPlayerEvent',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onPlayerEventCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onPlayerEvent:
            (MediaPlayerEvent eventCode, int elapsedTime, String message) {
          onPlayerEventCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const MediaPlayerEvent eventCode =
            MediaPlayerEvent.playerEventSeekBegin;
        const int elapsedTime = 10;
        const String message = "hello";

        final eventJson = {
          'eventCode': eventCode.value(),
          'elapsedTime': elapsedTime,
          'message': message,
        };

        final eventIds =
            eventIdsMapping['MediaPlayerSourceObserver_onPlayerEvent'] ?? [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onPlayerEventCompleter.isCompleted) {
              onPlayerEventCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onPlayerEventCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onMetaData',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onMetaDataCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onMetaData: (Uint8List data, int length) {
          onMetaDataCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        Uint8List data = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int length = 10;

        final eventJson = {
          'data': data.toList(),
          'length': length,
        };

        final eventIds =
            eventIdsMapping['MediaPlayerSourceObserver_onMetaData'] ?? [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onMetaDataCompleter.isCompleted) {
              onMetaDataCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onMetaDataCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onPlayBufferUpdated',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onPlayBufferUpdatedCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onPlayBufferUpdated: (int playCachedBuffer) {
          onPlayBufferUpdatedCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const int playCachedBuffer = 10;

        final eventJson = {
          'playCachedBuffer': playCachedBuffer,
        };

        final eventIds =
            eventIdsMapping['MediaPlayerSourceObserver_onPlayBufferUpdated'] ??
                [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onPlayBufferUpdatedCompleter.isCompleted) {
              onPlayBufferUpdatedCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onPlayBufferUpdatedCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onPreloadEvent',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onPreloadEventCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onPreloadEvent: (String src, PlayerPreloadEvent event) {
          onPreloadEventCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const String src = "hello";
        const PlayerPreloadEvent event =
            PlayerPreloadEvent.playerPreloadEventBegin;

        final eventJson = {
          'src': src,
          'event': event.value(),
        };

        final eventIds =
            eventIdsMapping['MediaPlayerSourceObserver_onPreloadEvent'] ?? [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onPreloadEventCompleter.isCompleted) {
              onPreloadEventCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onPreloadEventCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onCompleted',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onCompletedCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onCompleted: () {
          onCompletedCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        final eventJson = {};

        final eventIds =
            eventIdsMapping['MediaPlayerSourceObserver_onCompleted'] ?? [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onCompletedCompleter.isCompleted) {
              onCompletedCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onCompletedCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onAgoraCDNTokenWillExpire',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onAgoraCDNTokenWillExpireCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onAgoraCDNTokenWillExpire: () {
          onAgoraCDNTokenWillExpireCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        final eventJson = {};

        final eventIds = eventIdsMapping[
                'MediaPlayerSourceObserver_onAgoraCDNTokenWillExpire'] ??
            [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onAgoraCDNTokenWillExpireCompleter.isCompleted) {
              onAgoraCDNTokenWillExpireCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onAgoraCDNTokenWillExpireCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onPlayerSrcInfoChanged',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onPlayerSrcInfoChangedCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onPlayerSrcInfoChanged: (SrcInfo from, SrcInfo to) {
          onPlayerSrcInfoChangedCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const int fromBitrateInKbps = 10;
        const String fromName = "hello";
        const SrcInfo from = SrcInfo(
          bitrateInKbps: fromBitrateInKbps,
          name: fromName,
        );
        const int toBitrateInKbps = 10;
        const String toName = "hello";
        const SrcInfo to = SrcInfo(
          bitrateInKbps: toBitrateInKbps,
          name: toName,
        );

        final eventJson = {
          'from': from.toJson(),
          'to': to.toJson(),
        };

        final eventIds = eventIdsMapping[
                'MediaPlayerSourceObserver_onPlayerSrcInfoChanged'] ??
            [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onPlayerSrcInfoChangedCompleter.isCompleted) {
              onPlayerSrcInfoChangedCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onPlayerSrcInfoChangedCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onPlayerInfoUpdated',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onPlayerInfoUpdatedCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onPlayerInfoUpdated: (PlayerUpdatedInfo info) {
          onPlayerInfoUpdatedCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const String infoInternalPlayerUuid = "hello";
        const String infoDeviceId = "hello";
        const int infoVideoHeight = 10;
        const int infoVideoWidth = 10;
        const int infoAudioSampleRate = 10;
        const int infoAudioChannels = 10;
        const int infoAudioBitsPerSample = 10;
        const PlayerUpdatedInfo info = PlayerUpdatedInfo(
          internalPlayerUuid: infoInternalPlayerUuid,
          deviceId: infoDeviceId,
          videoHeight: infoVideoHeight,
          videoWidth: infoVideoWidth,
          audioSampleRate: infoAudioSampleRate,
          audioChannels: infoAudioChannels,
          audioBitsPerSample: infoAudioBitsPerSample,
        );

        final eventJson = {
          'info': info.toJson(),
        };

        final eventIds =
            eventIdsMapping['MediaPlayerSourceObserver_onPlayerInfoUpdated'] ??
                [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onPlayerInfoUpdatedCompleter.isCompleted) {
              onPlayerInfoUpdatedCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onPlayerInfoUpdatedCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onPlayerCacheStats',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onPlayerCacheStatsCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onPlayerCacheStats: (CacheStatistics stats) {
          onPlayerCacheStatsCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const int statsFileSize = 10;
        const int statsCacheSize = 10;
        const int statsDownloadSize = 10;
        const CacheStatistics stats = CacheStatistics(
          fileSize: statsFileSize,
          cacheSize: statsCacheSize,
          downloadSize: statsDownloadSize,
        );

        final eventJson = {
          'stats': stats.toJson(),
        };

        final eventIds =
            eventIdsMapping['MediaPlayerSourceObserver_onPlayerCacheStats'] ??
                [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onPlayerCacheStatsCompleter.isCompleted) {
              onPlayerCacheStatsCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onPlayerCacheStatsCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onPlayerPlaybackStats',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onPlayerPlaybackStatsCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onPlayerPlaybackStats: (PlayerPlaybackStats stats) {
          onPlayerPlaybackStatsCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const int statsVideoFps = 10;
        const int statsVideoBitrateInKbps = 10;
        const int statsAudioBitrateInKbps = 10;
        const int statsTotalBitrateInKbps = 10;
        const PlayerPlaybackStats stats = PlayerPlaybackStats(
          videoFps: statsVideoFps,
          videoBitrateInKbps: statsVideoBitrateInKbps,
          audioBitrateInKbps: statsAudioBitrateInKbps,
          totalBitrateInKbps: statsTotalBitrateInKbps,
        );

        final eventJson = {
          'stats': stats.toJson(),
        };

        final eventIds = eventIdsMapping[
                'MediaPlayerSourceObserver_onPlayerPlaybackStats'] ??
            [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onPlayerPlaybackStatsCompleter.isCompleted) {
              onPlayerPlaybackStatsCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onPlayerPlaybackStatsCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaPlayerSourceObserver.onAudioVolumeIndication',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      final mediaPlayerController = MediaPlayerController(
          rtcEngine: rtcEngine, canvas: const VideoCanvas());
      await mediaPlayerController.initialize();

      final onAudioVolumeIndicationCompleter = Completer<bool>();
      final theMediaPlayerSourceObserver = MediaPlayerSourceObserver(
        onAudioVolumeIndication: (int volume) {
          onAudioVolumeIndicationCompleter.complete(true);
        },
      );

      mediaPlayerController.registerPlayerSourceObserver(
        theMediaPlayerSourceObserver,
      );

// Delay 500 milliseconds to ensure the registerPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const int volume = 10;

        final eventJson = {
          'volume': volume,
        };

        final eventIds = eventIdsMapping[
                'MediaPlayerSourceObserver_onAudioVolumeIndication'] ??
            [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onAudioVolumeIndicationCompleter.isCompleted) {
              onAudioVolumeIndicationCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onAudioVolumeIndicationCompleter.future;
      expect(eventCalled, isTrue);

      {
        mediaPlayerController.unregisterPlayerSourceObserver(
          theMediaPlayerSourceObserver,
        );
      }
// Delay 500 milliseconds to ensure the unregisterPlayerSourceObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );
}
