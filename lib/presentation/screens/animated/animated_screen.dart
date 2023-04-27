import 'package:flutter/material.dart';


class AnimatedPage extends StatelessWidget {
static const String name = 'Animated_screen';

  const AnimatedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}