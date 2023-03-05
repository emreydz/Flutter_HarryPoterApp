import 'package:go_router/go_router.dart';
import 'package:harry_poter_app/presentation/pages/character/characters_page.dart';
import 'package:harry_poter_app/presentation/pages/home/home_page.dart';
import 'package:harry_poter_app/presentation/pages/landing/landing_page.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: '/',
        name: "/",
        builder: (context, state) {
          return const LandingPage();
        },
      ),
      GoRoute(
        path: '/characters',
        name: "characters",
        builder: (context, state) {
          return const CharactersPage();
        },
      ),
    ],
  );
}
