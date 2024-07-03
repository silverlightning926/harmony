import 'package:flutter/material.dart';

class ArtistCardLoading extends StatelessWidget {
  const ArtistCardLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
