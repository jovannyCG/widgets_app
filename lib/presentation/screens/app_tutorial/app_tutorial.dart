import 'package:flutter/material.dart';


class AppTutorialPage extends StatelessWidget {
static const String name = 'app_tutorial_screen';

  const AppTutorialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app tutorial'),
      ),
      body: const Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}