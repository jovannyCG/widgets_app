import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('buttons Screen'),
      ),
      // ignore: prefer_const_constructors
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated button'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              label: const Text('Elevated button icon'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Filled Button'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              label: const Text('Filled Button icon'),
            ),
            OutlinedButton(onPressed: (){}, child: const Text(' Outlined Button'),),
            OutlinedButton.icon(onPressed: (){}, label: const Text(' Outlined Button icon'), icon: const Icon(Icons.abc),),
            TextButton(onPressed: (){}, child: const Text('Text Button')),
            TextButton.icon(onPressed: (){}, label: const Text('Text Button icon'),icon: const Icon(Icons.abc),),
            IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.abc), 
            style: 
            ButtonStyle( 
              backgroundColor: MaterialStatePropertyAll(colors.primary),)),
          ],
        ),  
      ),  
    );
  }
}
