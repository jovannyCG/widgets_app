import 'package:flutter/material.dart';
import 'dart:math'show Random;

class AnimatedPage extends StatefulWidget {
static const String name = 'Animated_screen';

  const AnimatedPage({super.key});

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double width = 50;
  double height =50;
  Color color = Colors.amber;
  double boderRadius = 30;

  void changeShape(){
    final random = Random();
    width = random.nextInt(300) + 120;
    height = random.nextInt(300)+ 120;
    boderRadius = random.nextInt(100)+ 20;
    color = Color.fromRGBO(random.nextInt(255),random.nextInt(255),random.nextInt(255),1);
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.elasticOut,
          width: width <=0 ? 0: width,
          height: height <=0 ? 0: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(boderRadius <0 ? 0:boderRadius)
          ), duration: const Duration(milliseconds: 900),

        ),
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: changeShape,
      child: const Icon(Icons.play_arrow_rounded),
      ),
   );
  }
}