import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SongCardLoading extends StatelessWidget {
  const SongCardLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Shimmer(
          child: const SizedBox(
            width: 250,
          ),
        ),
      ),
    );
  }
}
