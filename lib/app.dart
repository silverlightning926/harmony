import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harmony/screens/home_screen.dart';
import 'package:harmony/screens/onboarding_screen.dart';

class Harmony extends StatelessWidget {
  const Harmony({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Harmony',
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: "/intro",
        routes: [
          GoRoute(
            path: "/intro",
            builder: (context, state) => const OnboardingScreen(),
          ),
          GoRoute(
            path: "/home",
            builder: (context, state) => const HomeScreen(),
          ),
        ],
      ),
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
        ),
      ),
    );
  }
}
