import 'package:flutter/material.dart';

class AnimatedTextPage extends StatefulWidget {
  const AnimatedTextPage({super.key});

  @override
  State<AnimatedTextPage> createState() => _AnimatedTextPageState();
}

class _AnimatedTextPageState extends State<AnimatedTextPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedText'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$count',
                key: ValueKey<int>(count),
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            ElevatedButton(
              child: const Text('Clique'),
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
