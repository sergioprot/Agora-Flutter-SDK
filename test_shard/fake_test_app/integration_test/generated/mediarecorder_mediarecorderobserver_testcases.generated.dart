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

import '../testcases/event_ids_mapping.dart';

void generatedTestCases(IrisTester irisTester) {
  testWidgets(
    'MediaRecorderObserver.onRecorderStateChanged',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      await rtcEngine.setParameters('{"rtc.enable_debug_log": true}');

      final mediaRecorder = (await rtcEngine.createMediaRecorder(
          RecorderStreamInfo(channelId: 'hello', uid: 0)))!;

      final onRecorderStateChangedCompleter = Completer<bool>();
      final theMediaRecorderObserver = MediaRecorderObserver(
        onRecorderStateChanged: (String channelId, int uid, RecorderState state,
            RecorderReasonCode reason) {
          onRecorderStateChangedCompleter.complete(true);
        },
      );

      await mediaRecorder.setMediaRecorderObserver(
        theMediaRecorderObserver,
      );

// Delay 500 milliseconds to ensure the setMediaRecorderObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const String channelId = "hello";
        const int uid = 10;
        const RecorderState state = RecorderState.recorderStateError;
        const RecorderReasonCode reason = RecorderReasonCode.recorderReasonNone;

        final eventJson = {
          'channelId': channelId,
          'uid': uid,
          'state': state.value(),
          'reason': reason.value(),
        };

        final eventIds =
            eventIdsMapping['MediaRecorderObserver_onRecorderStateChanged'] ??
                [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onRecorderStateChangedCompleter.isCompleted) {
              onRecorderStateChangedCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onRecorderStateChangedCompleter.future;
      expect(eventCalled, isTrue);

      {}
// Delay 500 milliseconds to ensure the  call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.destroyMediaRecorder(mediaRecorder);
      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  testWidgets(
    'MediaRecorderObserver.onRecorderInfoUpdated',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));
      await rtcEngine.setParameters('{"rtc.enable_debug_log": true}');

      final mediaRecorder = (await rtcEngine.createMediaRecorder(
          RecorderStreamInfo(channelId: 'hello', uid: 0)))!;

      final onRecorderInfoUpdatedCompleter = Completer<bool>();
      final theMediaRecorderObserver = MediaRecorderObserver(
        onRecorderInfoUpdated: (String channelId, int uid, RecorderInfo info) {
          onRecorderInfoUpdatedCompleter.complete(true);
        },
      );

      await mediaRecorder.setMediaRecorderObserver(
        theMediaRecorderObserver,
      );

// Delay 500 milliseconds to ensure the setMediaRecorderObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const String channelId = "hello";
        const int uid = 10;
        const String infoFileName = "hello";
        const int infoDurationMs = 10;
        const int infoFileSize = 10;
        const RecorderInfo info = RecorderInfo(
          fileName: infoFileName,
          durationMs: infoDurationMs,
          fileSize: infoFileSize,
        );

        final eventJson = {
          'channelId': channelId,
          'uid': uid,
          'info': info.toJson(),
        };

        final eventIds =
            eventIdsMapping['MediaRecorderObserver_onRecorderInfoUpdated'] ??
                [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onRecorderInfoUpdatedCompleter.isCompleted) {
              onRecorderInfoUpdatedCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onRecorderInfoUpdatedCompleter.future;
      expect(eventCalled, isTrue);

      {}
// Delay 500 milliseconds to ensure the  call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.destroyMediaRecorder(mediaRecorder);
      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );
}
