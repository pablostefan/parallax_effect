import 'package:flutter/material.dart';
import 'package:parallax_effect/widgets/parallax_background_widget.dart';

import '../../models/parallax_position_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ParallaxPositionModel _parallaxPosition = ParallaxPositionModel();

  bool _onNotification(Notification notification) {
    if (notification is ScrollUpdateNotification) setState(() => _parallaxPosition.setParallax(notification));

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff372d3b),
        body: NotificationListener(
            onNotification: _onNotification,
            child: ListView(physics: const AlwaysScrollableScrollPhysics(), children: [
              ParallaxBackgroundWidget(parallaxPosition: _parallaxPosition),
              const Center(child: Text("Parallax Effect", style: TextStyle(color: Colors.white, fontSize: 28)))
            ])));
  }
}
