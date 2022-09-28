import 'package:flutter/material.dart';

class AnimatedIconsPage extends StatefulWidget {
  const AnimatedIconsPage({super.key});

  @override
  State<AnimatedIconsPage> createState() => _AnimatedIconsPageState();
}

class _AnimatedIconsPageState extends State<AnimatedIconsPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool isChanged = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  trigger() {
    setState(() {
      isChanged = !isChanged;
      isChanged ? controller.forward() : controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons Animados'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IconButton(
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: controller,
              size: 50,
            ),
            onPressed: trigger,
          ),
          const SizedBox(width: 20),
          const Center(
            child: Text(
              'Menu drawer',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
