import 'package:flutter/material.dart';

class ParallaxPositionModel {
  double topOne;
  double topTwo;
  double topThree;
  double topFour;
  double topFive;
  double topSix;
  double topSeven;
  double topEight;
  double topNine;
  double topTen;
  double topEleven;

  ParallaxPositionModel()
      : topOne = 0,
        topTwo = 0,
        topThree = 0,
        topFour = 0,
        topFive = 0,
        topSix = 0,
        topSeven = 0,
        topEight = 0,
        topNine = 0,
        topTen = 0,
        topEleven = 0;

  void setParallax(ScrollUpdateNotification notification) {
    topOne -= notification.scrollDelta! / 1;
    topTwo -= notification.scrollDelta! / 1.2;
    topThree -= notification.scrollDelta! / 1.2;
    topFour -= notification.scrollDelta! / 1.3;
    topFive -= notification.scrollDelta! / 1.4;
    topSix -= notification.scrollDelta! / 1.5;
    topSeven -= notification.scrollDelta! / 1.6;
    topEight -= notification.scrollDelta! / 1.7;
    topNine -= notification.scrollDelta! / 1.8;
    topTen -= notification.scrollDelta! / 1.9;
    topEleven -= notification.scrollDelta! / 2;
  }
}
