import 'package:flutter/material.dart';


class AnimatedPage extends StatelessWidget {
static const String name = 'Animated_screen';

  const AnimatedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInOutCubic,
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20)
          ), duration: const Duration(milliseconds: 900),

        ),
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: const Icon(Icons.play_arrow_rounded),
      ),
   );
  }
}