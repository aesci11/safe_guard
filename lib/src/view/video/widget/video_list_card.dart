import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';

class VideoListCard extends ConsumerWidget {
  const VideoListCard({
    super.key,
    required this.cameraName,
    required this.cameraId,
    required this.cctvUrl,
    required this.onPressed,
  });

  final String cameraName;
  final String cameraId;
  final String cctvUrl;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0, left: 8.0, right: 8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 26.0),
          decoration: BoxDecoration(
            color: ref.color.onPrimary,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            cameraName,
            style: ref.typo.headline6.copyWith(),
          ),
        ),
      ),
    );
  }
}
