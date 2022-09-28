import 'package:flutter/material.dart';

class AnimatedRotationPage extends StatefulWidget {
  const AnimatedRotationPage({super.key});

  @override
  State<AnimatedRotationPage> createState() => _AnimatedRotationPageState();
}

class _AnimatedRotationPageState extends State<AnimatedRotationPage> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedRotation'),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: ((context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * 3.14,
                  child: child,
                );
              }),
              child: avatarInsta,
            ),
            Positioned(
              top: 10,
              left: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.network(
                  'https://i.imgur.com/BoN9kdC.png',
                  height: 240,
                  width: 240,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final avatarInsta = Container(
    width: 260,
    height: 260,
    padding: const EdgeInsets.all(7),
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        colors: [
          Colors.purple,
          Colors.pink,
          Colors.red,
          Colors.redAccent,
          Colors.orange,
        ],
      ),
    ),
  );
}
