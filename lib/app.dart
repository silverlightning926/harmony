import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/screens/home_screen.dart';

class Harmony extends StatelessWidget {
  const Harmony({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Harmony',
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: "/home",
        routes: [
          GoRoute(
            path: "/home",
            builder: (context, state) => const HomeScreen(),
          ),
        ],
      ),
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.aBeeZee(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: GoogleFonts.aBeeZee(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: GoogleFonts.aBeeZee(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
