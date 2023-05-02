import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackBarPage({super.key});

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(content: const Text('data'), 
    action: SnackBarAction(label: 'ok!', onPressed: () {  },),
    duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('snackbars y diálogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showSnackBar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
