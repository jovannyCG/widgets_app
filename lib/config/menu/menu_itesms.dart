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
  MenuItem(
      title: 'Snack bar',
      subTitle: 'indicadores en pantalla',
      link: '/snackbar',
      icon: Icons.info_rounded),
  MenuItem(
      title: 'Animated container',
      subTitle: 'statefull widget animado',
      link: '/container',
      icon: Icons.check_box_outlined),
  MenuItem(
      title: 'UI controlls',
      subTitle: 'una serie de controles de flutter',
      link: '/ui-controlls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'App Tutorial',
      subTitle: 'un tutorial básico',
      link: '/tutorial',
      icon: Icons.drag_indicator),
  MenuItem(
      title: 'Infinete scroll',
      subTitle: 'listas infinitas',
      link: '/scroll',
      icon: Icons.list_alt_rounded),
];
