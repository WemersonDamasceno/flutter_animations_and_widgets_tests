import 'package:flutter/material.dart';

class AnimatedDraggablePage extends StatefulWidget {
  const AnimatedDraggablePage({super.key});

  @override
  State<AnimatedDraggablePage> createState() => _AnimatedDraggablePageState();
}

class _AnimatedDraggablePageState extends State<AnimatedDraggablePage> {
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animação de arrastar')),
      body: Stack(
        children: [
          Positioned(
            top: 300,
            left: 10,
            child: DragTarget(
              onAccept: (int data) {
                setState(() {
                  score += data;
                });
              },
              builder: (context, accept, rejected) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.52,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //first Number
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      //second Number
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            child: Draggable(
              data: 1,
              feedback: const NumberWidgets(number: 1),
              childWhenDragging: Container(),
              child: const NumberWidgets(number: 1),
            ),
          ),
          Positioned(
            top: 90,
            left: 220,
            child: Draggable(
              data: 20,
              feedback: const NumberWidgets(number: 20),
              childWhenDragging: Container(),
              child: const NumberWidgets(number: 20),
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Draggable(
              data: 10,
              feedback: const NumberWidgets(number: 10),
              childWhenDragging: Container(),
              child: const NumberWidgets(number: 10),
            ),
          ),
          //Box the numbers

          const Positioned(
              top: 300,
              left: 95,
              child: SizedBox(
                height: 100,
                width: 80,
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 70, color: Colors.black),
                ),
              )),

          const Positioned(
              top: 300,
              left: 230,
              child: SizedBox(
                height: 100,
                width: 80,
                child: Text(
                  '=',
                  style: TextStyle(fontSize: 80, color: Colors.black),
                ),
              )),
          Positioned(
              top: 300,
              left: 280,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Center(
                  child: Text(
                    "11",
                    style: TextStyle(fontSize: 80, color: Colors.black),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class NumberWidgets extends StatelessWidget {
  final int number;
  const NumberWidgets({super.key, required this.number});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Card(
        elevation: 5,
        child: Center(
          child: Text(
            '$number',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
