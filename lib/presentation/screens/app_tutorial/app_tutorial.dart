import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';

final slides = <SlideInfo>[
  SlideInfo(
      'buscar comida',
      'buscVoluptate ad ea pariatur consequat minim velit ut mollit nostrud. Fugiat proident sint adipisicing cillum enim consequat Lorem. Ad et et consequat quis commodo.',
      'assets/1.png'),
  SlideInfo(
      'Entrega rápida',
      'Dolore ad exercitation in irure velit cupidatat id fugiat voluptate id. Cillum cillum laboris sit ullamco veniam Lorem commodo est veniam tempor qui sint. Do nisi in reprehenderit ullamco dolore occaecat proident. Cillum consequat mollit esse labore ut id.',
      'assets/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Eu ea dolore ex sunt ea qui amet. Nostrud duis labore cillum quis pariatur id cupidatat consequat laborum. Veniam sint consequat veniam in amet voluptate enim. Magna est eiusmod veniam enim exercitation ullamco et exercitation Lorem id aliquip laboris aliqua. Minim nulla ex fugiat nulla. Incididunt esse voluptate voluptate sint ex magna sunt. Aliqua do veniam amet voluptate ut eiusmod magna et proident laboris officia.',
      'assets/3.png')
];

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

class AppTutorialPage extends StatefulWidget {
  static const String name = 'app_tutorial_screen';

  const AppTutorialPage({super.key});

  @override
  State<AppTutorialPage> createState() => _AppTutorialPageState();
}

class _AppTutorialPageState extends State<AppTutorialPage> {
  final pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1)) {
        setState(() {
          endReached = true;
        });
      }
    }
    
    
    );
  }
  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
                controller: pageViewController,
                physics: const BouncingScrollPhysics(),
                children: slides
                    .map((slideData) => _SlideView(
                          title: slideData.title,
                          caption: slideData.caption,
                          imageUrl: slideData.imageUrl,
                        ))
                    .toList()),
            Positioned(
                right: 20,
                top: 50,
                child: TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('salir'))),
            endReached
                ? Positioned(
                    bottom: 30,
                    right: 30,
                    child: FadeInRight(
                      from: 15,
                      delay: const Duration(seconds: 1),
                      child: FilledButton(
                          onPressed: () {}, child: const Text('comenzar')),
                    ))
                : const SizedBox()
          ],
        ));
  }
}

class _SlideView extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _SlideView(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
