import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ArtistCardLoading extends StatelessWidget {
  const ArtistCardLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Shimmer(
          child: Container(
            width: 150,
          ),
        ),
      ),
    );
  }
}
