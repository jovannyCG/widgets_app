import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_itesms.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('home scren'),
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
      itemCount:  appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return __MenuElement(menuItem: menuItem);
      },
    );
  }
}

class __MenuElement extends StatelessWidget {
  const __MenuElement({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: const Icon(Icons.arrow_forward_ios_rounded ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: (){},
    
    );
  }
}
