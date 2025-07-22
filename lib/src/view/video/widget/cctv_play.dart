import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class CctvPlay extends ConsumerStatefulWidget {
  const CctvPlay({
    super.key,
    required this.cctvUrl,
    required this.cctvName,
  });

  final String cctvUrl;
  final String cctvName;

  @override
  ConsumerState<CctvPlay> createState() => _CctvPlayState();
}

class _CctvPlayState extends ConsumerState<CctvPlay> {
  late final player = Player(configuration: const PlayerConfiguration());
  late final controller = VideoController(player);

  /// 로딩 타이머
  Timer? bufferingTimer;

  /// 영상 로딩중인지 여부
  bool isBuffering = false;
  String delayLoading = '';
  String errorMassage = '';

  @override
  void initState() {
    super.initState();
    playCctvStream();
  }

  @override
  void dispose() {
    bufferingTimer?.cancel();
    player.dispose();
    super.dispose();
  }

  void playCctvStream() async {
    await player.setAudioTrack(AudioTrack.no());
    try {
      NativePlayer native = controller.player.platform as NativePlayer;
      native.setProperty('aid', 'no');
      native.setProperty('profile', 'low-latency');
      native.setProperty('opengl-glfinish', 'yes');
      // player.platform = native;
      await native.open(Media('rtsp://${widget.cctvUrl}'));
      bufferingTimer = Timer(
        const Duration(seconds: 10),
        () {
          if (mounted) {
            player.stop();
            delayLoading = '연결 시간 초과';
            setState(() {
              isBuffering = false;
            });
          }
        },
      );
      player.stream.videoParams.listen(
        (event) {
          if (event.pixelformat != null && mounted) {
            bufferingTimer?.cancel();
          }
        },
      );
    } catch (e) {
      errorMassage = 'Video Loss: $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// CCTV 화면
        Video(
          controller: controller,
          aspectRatio: 16 / 9,
          controls: (state) {
            state.widget.controller.player.stream.buffering.listen(
              (event) {
                if (isBuffering != event) {
                  setState(() {
                    isBuffering = event;
                  });
                }
              },
            );
            return isBuffering
                ? Center(
                    child: CircularProgressIndicator(
                      color: ref.color.primary,
                    ),
                  )
                : delayLoading.isNotEmpty
                    ? Center(
                        child: Text(
                          'Video Loss: $delayLoading',
                          style: ref.typo.subtitle1.copyWith(color: ref.color.onPrimary),
                        ),
                      )
                    : GestureDetector(
                        onDoubleTap: () => state.toggleFullscreen(),
                      );
          },

          /// 풀 스크린 나갈때 화면 고정
          onExitFullscreen: () async {
            try {
              if (Platform.isAndroid || Platform.isIOS) {
                await Future.wait(
                  [
                    SystemChrome.setEnabledSystemUIMode(
                      SystemUiMode.manual,
                      overlays: SystemUiOverlay.values,
                    ),
                    SystemChrome.setPreferredOrientations(
                      [
                        DeviceOrientation.landscapeLeft,
                        DeviceOrientation.landscapeRight,
                      ],
                    ),
                  ],
                );
              } else if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
                await const MethodChannel('com.alexmercerind/media_kit_video').invokeMethod(
                  'Utils.ExitNativeFullscreen',
                );
              }
            } catch (exception, stacktrace) {
              debugPrint(exception.toString());
              debugPrint(stacktrace.toString());
            }
          },
        ),

        /// CCTV 이름
        Positioned(
            top: 6.0,
            left: 18.0,
            child: Text(
              widget.cctvName,
              textScaler: TextScaler.noScaling,
              style: ref.typo.body1.copyWith(color: ref.color.onPrimary),
            )),
      ],
    );
  }
}
