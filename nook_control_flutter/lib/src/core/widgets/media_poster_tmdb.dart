import 'package:flutter/material.dart';
import 'package:nook_control_flutter/src/core/utils/tmdb_format_utils.dart';

class MediaPosterTMDB extends StatelessWidget {
  const MediaPosterTMDB({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
  });
  final String? imagePath;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.black,
        image: imagePath != null
            ? DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(TMDBFormatUtils.fullImagePath(imagePath)!),
              )
            : null,
      ),
      child: imagePath == null
          ? const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.warning),
                Text(
                  'No Preview Available',
                  textAlign: TextAlign.center,
                ),
              ],
            )
          : null,
    );
  }
}
