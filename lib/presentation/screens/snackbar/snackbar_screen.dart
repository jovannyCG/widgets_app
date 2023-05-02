import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  void openDialog(BuildContext context){
   showDialog(
    barrierDismissible: false,
    context: context, builder: (context) => AlertDialog(
    title: const Text('¿Estás Seguro?'),
    content: const Text('data'),
    actions: [
      TextButton(onPressed: ()=>context.pop(), child: const Text('cancelar')),
      FilledButton(onPressed: ()=>context.pop(), child: const Text('aceptar'))
    ],
   )); 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('snackbars y diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed:(){
              showAboutDialog(context: context, children: [
                const Text('muestra todas las licencias que usa la aplicación par funcionar'),
              ]);
            }, child: const Text('licencias usadas')),
            FilledButton.tonal(onPressed:()=>openDialog(context), child: const Text('mostrar diálogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showSnackBar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
