import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';

class ProfilePictureWidget extends StatelessWidget {
  final PictureType pictureType;
  final String pictureUrl;
  ProfilePictureWidget({
    required this.pictureType,
    required this.pictureUrl,
  });

  @override
  Widget build(BuildContext context) {
    double size = 0;

    switch (pictureType) {
      case PictureType.small:
        size = 40;
        break;
      case PictureType.medium:
        size = 55;
        break;

      case PictureType.big:
        size = 80;
        break;
    }

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: ProjectColors.white, width: 3),
        image: DecorationImage(image: NetworkImage(pictureUrl)),
      ),
    );
  }
}

enum PictureType {
  small,
  medium,
  big,
}
