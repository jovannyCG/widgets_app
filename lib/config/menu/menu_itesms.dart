import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});

}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'botones', 
    subTitle: 'pagina de botones', 
    link: '/buttons', 
    icon: Icons.abc),

 MenuItem(
    title: 'Tarjetas', 
    subTitle: 'contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card),

MenuItem(
    title: 'Progress Indicator', 
    subTitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded),


];
