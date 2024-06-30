import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';

class SubtitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SubtitleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 45),
          const GradientAnimationText(
            text: Text('Harmony'),
            colors: [
              Color(0xFF9C4DCC),
              Color(0xFFEA76CB),
            ],
            duration: Duration(seconds: 30),
            transform: GradientRotation(1.5 * pi),
          ),
          const SizedBox(height: 7),
          Text(
            'Dive Deeper Into Your Music',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
      clipBehavior: Clip.none,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
