

import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {

  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 3;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value){
        setState(() {
          navDrawerIndex = value;
        });
      },
      children: [

            NavigationDrawerDestination(icon: Icon(Icons.confirmation_num_sharp), label: Text('home screen')),
            NavigationDrawerDestination(icon: Icon(Icons.confirmation_num_sharp), label: Text('otra pantalla')),
            NavigationDrawerDestination(icon: Icon(Icons.confirmation_num_sharp), label: Text('hola')),
            NavigationDrawerDestination(icon: Icon(Icons.confirmation_num_sharp), label: Text('hola'))

      ]);
  }
}