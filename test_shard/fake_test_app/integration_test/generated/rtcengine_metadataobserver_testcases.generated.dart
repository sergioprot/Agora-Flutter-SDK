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
    'MetadataObserver.onMetadataReceived',
    (WidgetTester tester) async {
      RtcEngine rtcEngine = createAgoraRtcEngine();
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String logPath = path.join(appDocDir.path, 'test_log.txt');
      await rtcEngine.initialize(RtcEngineContext(
        appId: 'app_id',
        areaCode: AreaCode.areaCodeGlob.value(),
        logConfig: LogConfig(filePath: logPath),
      ));

      final onMetadataReceivedCompleter = Completer<bool>();
      final theMetadataObserver = MetadataObserver(
        onMetadataReceived: (Metadata metadata) {
          onMetadataReceivedCompleter.complete(true);
        },
      );

      const MetadataType type = MetadataType.unknownMetadata;

      rtcEngine.registerMediaMetadataObserver(
        observer: theMetadataObserver,
        type: type,
      );

// Delay 500 milliseconds to ensure the registerMediaMetadataObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      {
        const int metadataUid = 10;
        const int metadataSize = 10;
        Uint8List metadataBuffer = Uint8List.fromList([1, 2, 3, 4, 5]);
        const int metadataTimeStampMs = 10;
        final Metadata metadata = Metadata(
          uid: metadataUid,
          size: metadataSize,
          buffer: metadataBuffer,
          timeStampMs: metadataTimeStampMs,
        );

        final eventJson = {
          'metadata': metadata.toJson(),
        };

        final eventIds =
            eventIdsMapping['MetadataObserver_onMetadataReceived'] ?? [];
        for (final event in eventIds) {
          final ret = irisTester.fireEvent(event, params: eventJson);
          // Delay 200 milliseconds to ensure the callback is called.
          await Future.delayed(const Duration(milliseconds: 200));
          // TODO(littlegnal): Most of callbacks on web are not implemented, we're temporarily skip these callbacks at this time.
          if (kIsWeb && ret) {
            if (!onMetadataReceivedCompleter.isCompleted) {
              onMetadataReceivedCompleter.complete(true);
            }
          }
        }
      }

      final eventCalled = await onMetadataReceivedCompleter.future;
      expect(eventCalled, isTrue);

      {
        const MetadataType type = MetadataType.unknownMetadata;

        rtcEngine.unregisterMediaMetadataObserver(
          observer: theMetadataObserver,
          type: type,
        );
      }
// Delay 500 milliseconds to ensure the unregisterMediaMetadataObserver call completed.
      await Future.delayed(const Duration(milliseconds: 500));

      await rtcEngine.release();
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );
}
