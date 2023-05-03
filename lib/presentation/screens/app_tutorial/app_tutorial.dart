import 'package:flutter/material.dart';

final slides = <SlideInfo>[
  SlideInfo('buscar comida', 
  'buscVoluptate ad ea pariatur consequat minim velit ut mollit nostrud. Fugiat proident sint adipisicing cillum enim consequat Lorem. Ad et et consequat quis commodo.', 
  'assets/1.png'),
  SlideInfo('Entrega rápida', 
  'Dolore ad exercitation in irure velit cupidatat id fugiat voluptate id. Cillum cillum laboris sit ullamco veniam Lorem commodo est veniam tempor qui sint. Do nisi in reprehenderit ullamco dolore occaecat proident. Cillum consequat mollit esse labore ut id.',
  'assets/2.png'),
  SlideInfo('Disfruta la comida',
  'Eu ea dolore ex sunt ea qui amet. Nostrud duis labore cillum quis pariatur id cupidatat consequat laborum. Veniam sint consequat veniam in amet voluptate enim. Magna est eiusmod veniam enim exercitation ullamco et exercitation Lorem id aliquip laboris aliqua. Minim nulla ex fugiat nulla. Incididunt esse voluptate voluptate sint ex magna sunt. Aliqua do veniam amet voluptate ut eiusmod magna et proident laboris officia.', 
  'assets/3.png')
];

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

class AppTutorialPage extends StatelessWidget {
  static const String name = 'app_tutorial_screen';

  const AppTutorialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      physics: const BouncingScrollPhysics(),
      children: 
       slides.map((slideData) => _SlideView(
        title: slideData.title,
        caption: slideData.caption, 
        imageUrl: slideData.imageUrl, 
        )).toList()
      
    ));
  }
}
class _SlideView extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _SlideView({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
