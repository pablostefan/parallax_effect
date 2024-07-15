import 'package:flutter/material.dart';
import 'package:parallax_effect/helpers/images.dart';

class ParallaxImageWidget extends StatelessWidget {
  final AppImages image;
  final double topPosition;

  const ParallaxImageWidget({super.key, required this.image, required this.topPosition});

  @override
  Widget build(BuildContext context) {
    return Positioned(top: topPosition, child: Image.asset(image.path, height: 355, fit: BoxFit.cover));
  }
}
