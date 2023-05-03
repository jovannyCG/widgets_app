import 'package:flutter/material.dart';

class UiControllsPage extends StatelessWidget {
  static const String name = 'ui_controlls_screen';

  const UiControllsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui controlls'),
      ),
      body: const _UiControllsView(),
    );
  }
}

class _UiControllsView extends StatefulWidget {
  const _UiControllsView();

  @override
  State<_UiControllsView> createState() => _UiControllsViewState();
}

enum Trasnsportation { car, plaen, boat, submarine }

class _UiControllsViewState extends State<_UiControllsView> {
  bool isDeveloper = true;
  Trasnsportation selectedTrasnsportation = Trasnsportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('developer mode'),
            subtitle: const Text('controlles adicionales'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        RadioListTile(
            title: const Text('By boat'),
            subtitle: const Text('viajar en bote'),
            value: Trasnsportation.boat,
            groupValue: selectedTrasnsportation,
            onChanged: (value) => setState(() {
                  selectedTrasnsportation = Trasnsportation.boat;
                })),
        RadioListTile(
            title: const Text('By plane'),
            subtitle: const Text('viajar en avión'),
            value: Trasnsportation.plaen,
            groupValue: selectedTrasnsportation,
            onChanged: (value) => setState(() {
                  selectedTrasnsportation = Trasnsportation.plaen;
                })),
        RadioListTile(
            title: const Text('By submarine'),
            subtitle: const Text('viajar en submarino'),
            value: Trasnsportation.submarine,
            groupValue: selectedTrasnsportation,
            onChanged: (value) => setState(() {
                  selectedTrasnsportation = Trasnsportation.submarine;
                })),
        RadioListTile(
            title: const Text('Bycar'),
            subtitle: const Text('viajar en carro'),
            value: Trasnsportation.car,
            groupValue: selectedTrasnsportation,
            onChanged: (value) => setState(() {
                  selectedTrasnsportation = Trasnsportation.car;
                })),
      ],
    );
  }
}
