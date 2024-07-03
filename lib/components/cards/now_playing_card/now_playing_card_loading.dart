import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class NowPlayingCardLoading extends StatelessWidget {
  const NowPlayingCardLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Shimmer(
          child: Container(
            height: 200,
          ),
        ),
      ),
    );
  }
}
