import 'package:flutter/material.dart';

class SongCardLoading extends StatelessWidget {
  const SongCardLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
