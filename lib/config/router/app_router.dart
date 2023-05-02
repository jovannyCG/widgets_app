import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screen.dart';

// configuración de go_ router
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      name: CardsScreen.name,
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      name: ProgressPage.name,
      path: '/progress',
      builder: (context, state) => const ProgressPage(),
    ),
    GoRoute(
      name: SnackBarPage.name,
      path: '/snackbar',
      builder: (context, state) => const SnackBarPage(),
    ),
    GoRoute(
      name: AnimatedPage.name,
      path: '/container',
      builder: (context, state) => const AnimatedPage(),
    ),
  ],
);
