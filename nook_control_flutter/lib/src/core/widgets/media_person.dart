import 'package:flutter/material.dart';

class MediaPerson extends StatelessWidget {
  const MediaPerson({
    super.key,
    required this.name,
    required this.role,
    this.size = 10,
    this.imagePath,
  });

  final double size;
  final String? imagePath;
  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: imagePath != null
                ? DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imagePath!),
                  )
                : null,
          ),
          child: imagePath == null
              ? const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.warning),
                  ],
                )
              : null,
        ),
        Text(name),
        Text(role),
      ],
    );
  }
}
