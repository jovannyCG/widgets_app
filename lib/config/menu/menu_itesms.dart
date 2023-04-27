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
    title: 'title', 
    subTitle: 'subTitle', 
    link: 'link', 
    icon: Icons.abc),

 MenuItem(
    title: 'Tarjetas', 
    subTitle: 'contenedor estilizado', 
    link: 'link', 
    icon: Icons.credit_card),



];
