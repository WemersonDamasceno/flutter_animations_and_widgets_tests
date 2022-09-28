import 'package:flutter/material.dart';
import 'package:flutter_animations/pages/animations_page/animated_cross_fade_page.dart';
import 'package:flutter_animations/pages/animations_page/animated_icons_page.dart';
import 'package:flutter_animations/pages/animations_page/animated_positioned_page.dart';
import 'package:flutter_animations/pages/animations_page/animated_rotation_page.dart';
import 'package:flutter_animations/pages/animations_page/animated_text_page.dart';
import 'package:flutter_animations/pages/home_page.dart';
import 'package:flutter_animations/pages/widgets_tests_page/widget_tests_page.dart';

import 'pages/animations_page/animated_draggable_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animacoes',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
      routes: {
        '/animated_text': (context) => const AnimatedTextPage(),
        '/animated_positioned': (context) => const AnimatedPositionedPage(),
        '/animated_draggable': (context) => const AnimatedDraggablePage(),
        '/animated_icons': (context) => const AnimatedIconsPage(),
        '/animated_rotation': (context) => const AnimatedRotationPage(),
        '/animated_cross_fade': (context) => const AnimatedCrossFadePage(),
        '/widget_tests': (context) => const WidgetTestsPage(),
      },
    );
  }
}
