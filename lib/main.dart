import 'package:flutter/material.dart';
import 'package:parallax_effect/pages/home/home_page.dart';

void main() => runApp(const ParallaxApp());

class ParallaxApp extends StatelessWidget {
  const ParallaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Parallax Effect',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
        home: const HomePage());
  }
}
