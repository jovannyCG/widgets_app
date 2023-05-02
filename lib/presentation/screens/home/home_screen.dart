import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_itesms.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('home screen'),
        ),
        body: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return __MenuElement(menuItem: menuItem);
      },
    );
  }
}

class __MenuElement extends StatelessWidget {

  final MenuItem menuItem;
  const __MenuElement({
    required this.menuItem,
  });



  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        //navegacion a una nueva pagina sin rutas

        // Navigator.of(context).push(
        // MaterialPageRoute(
        //   builder: (context) => const CardsScreen(),
        // ),
        // );

         //navegacion a una nueva pagina con rutas
        //Navigator.pushNamed(context, '/buttons');

        // navegacion con go_router (hace exactamente lo mismo que las lineas anteriores)
        context.push(menuItem.link);
       // navegacion con go_router con nombre(hace exactamente lo mismo que las lineas anteriores)
      // context.pushNamed(ButtonsScreen.name);



      },
    );
  }
}
