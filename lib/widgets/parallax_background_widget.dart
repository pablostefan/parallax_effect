import 'package:flutter/material.dart';
import 'package:parallax_effect/helpers/images.dart';
import 'package:parallax_effect/models/parallax_position_model.dart';
import 'package:parallax_effect/widgets/parallax_image_widget.dart';

class ParallaxBackgroundWidget extends StatelessWidget {
  final ParallaxPositionModel parallaxPosition;

  const ParallaxBackgroundWidget({super.key, required this.parallaxPosition});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 100),
        height: 350,
        color: const Color(0xff372d3b),
        child: Stack(children: [
          ParallaxImageWidget(image: AppImages.parallax_eleven, topPosition: parallaxPosition.topEleven),
          ParallaxImageWidget(image: AppImages.parallax_ten, topPosition: parallaxPosition.topTen),
          ParallaxImageWidget(image: AppImages.parallax_nine, topPosition: parallaxPosition.topNine),
          ParallaxImageWidget(image: AppImages.parallax_eight, topPosition: parallaxPosition.topEight),
          ParallaxImageWidget(image: AppImages.parallax_seven, topPosition: parallaxPosition.topSeven),
          ParallaxImageWidget(image: AppImages.parallax_six, topPosition: parallaxPosition.topSix),
          ParallaxImageWidget(image: AppImages.parallax_five, topPosition: parallaxPosition.topFive),
          ParallaxImageWidget(image: AppImages.parallax_four, topPosition: parallaxPosition.topFour),
          ParallaxImageWidget(image: AppImages.parallax_three, topPosition: parallaxPosition.topThree),
          ParallaxImageWidget(image: AppImages.parallax_two, topPosition: parallaxPosition.topTwo),
          ParallaxImageWidget(image: AppImages.parallax_one, topPosition: parallaxPosition.topOne),
        ]));
  }
}
