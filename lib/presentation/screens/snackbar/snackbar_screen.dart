import 'package:flutter/material.dart';


class SnackBarPage extends StatelessWidget {
static const String name = 'snackbar_screen';

  const SnackBarPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}