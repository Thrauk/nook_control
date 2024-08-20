import 'package:flutter/material.dart';

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

  static const baseUrl = 'https://image.tmdb.org/t/p/original/';

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
                image: NetworkImage(baseUrl + imagePath!),
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
