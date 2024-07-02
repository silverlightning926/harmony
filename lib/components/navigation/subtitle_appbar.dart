import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/providers/auth_providers.dart';

class SubtitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SubtitleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 45),
          GradientAnimationText(
            text: Text(
              'Harmony',
              style: GoogleFonts.poppins(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            colors: const [
              Color(0xFF9C4DCC),
              Color(0xFFEA76CB),
            ],
            duration: const Duration(seconds: 30),
            transform: const GradientRotation(1.5 * pi),
          ),
          const SizedBox(height: 7),
          Text(
            'Dive Deeper Into Your Music',
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () async {
            await AuthService.logout();
            if (context.mounted) {
              context.go('/connect');
            }
          },
        ),
      ],
      clipBehavior: Clip.none,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
