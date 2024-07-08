import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:harmony/screens/connect_screen.dart';
import 'package:harmony/screens/home_screen.dart';
import 'package:harmony/screens/loading_screen.dart';
import 'package:harmony/screens/song_screen.dart';

class Harmony extends StatelessWidget {
  const Harmony({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Harmony',
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: '/loading',
        routes: [
          GoRoute(
            path: '/loading',
            builder: (context, state) => const LoadingScreen(),
          ),
          GoRoute(
            path: "/home",
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/connect',
            builder: (context, state) => const ConnectScreen(),
          ),
          GoRoute(
            path: "/song/:songId",
            builder: (context, state) {
              final songId = state.pathParameters['songId'];
              return SongScreen(trackId: songId!);
            },
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
