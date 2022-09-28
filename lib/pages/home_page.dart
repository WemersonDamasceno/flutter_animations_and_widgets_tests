import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animações'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Animacao de texto'),
              onPressed: () {
                Navigator.pushNamed(context, '/animated_text');
              },
            ),
            ElevatedButton(
              child: const Text('Animacao de posição'),
              onPressed: () {
                Navigator.pushNamed(context, '/animated_positioned');
              },
            ),
            ElevatedButton(
              child: const Text('Animação de arrastar'),
              onPressed: () {
                Navigator.pushNamed(context, '/animated_draggable');
              },
            ),
            ElevatedButton(
              child: const Text('Animação de Icons'),
              onPressed: () {
                Navigator.pushNamed(context, '/animated_icons');
              },
            ),
            ElevatedButton(
              child: const Text('Animação de Rotação'),
              onPressed: () {
                Navigator.pushNamed(context, '/animated_rotation');
              },
            ),
            ElevatedButton(
              child: const Text('FloatingActionButton'),
              onPressed: () {
                Navigator.pushNamed(context, '/animated_cross_fade');
              },
            ),
            ElevatedButton(
              child: const Text('Testes de Widgets'),
              onPressed: () {
                Navigator.pushNamed(context, '/widget_tests');
              },
            ),
          ],
        ),
      ),
    );
  }
}
