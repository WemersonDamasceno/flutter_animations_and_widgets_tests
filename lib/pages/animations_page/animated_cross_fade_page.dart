import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  const AnimatedCrossFadePage({super.key});

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFade'),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.purple,
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 50,
          child: CustomItemsBottomMenu(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: const Text('Sangue de Jesus tem', style: TextStyle(fontSize: 20, color: Colors.black)),
              secondChild: const Text('P O D E R', style: TextStyle(fontSize: 40, color: Colors.black)),
              crossFadeState: isClicked ? CrossFadeState.showSecond : CrossFadeState.showFirst,
              duration: const Duration(seconds: 1),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.calendar_today_outlined,
          size: 35,
        ),
        onPressed: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
    );
  }
}

class CustomItemsBottomMenu extends StatelessWidget {
  const CustomItemsBottomMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 35,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 35,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
