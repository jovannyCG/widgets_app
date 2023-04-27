

import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screen.dart';


// configuración de go_ router
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const HomePage(),
    ),

    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);