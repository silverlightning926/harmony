import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:harmony/providers/auth_providers.dart';

class LoadingScreen extends ConsumerStatefulWidget {
  const LoadingScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends ConsumerState<LoadingScreen> {
  Future<bool> _checkIfAuthenticated() async {
    final isAuthenticated = await ref.read(isAuthenticatedProvider.future);
    return isAuthenticated;
  }

  @override
  void initState() {
    _checkIfAuthenticated().then((isAuthenticated) {
      if (isAuthenticated) {
        context.go('/home');
      } else {
        context.go('/connect');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
