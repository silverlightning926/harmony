import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/providers/auth_providers.dart';

class SubtitleAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const SubtitleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 45),
          Animate(
            effects: const [
              ShimmerEffect(
                colors: [
                  Colors.pinkAccent,
                  Colors.pink,
                  Colors.orangeAccent,
                ],
                duration: Duration(seconds: 4),
                curve: Curves.easeInOut,
              ),
            ],
            child: Text(
              'Harmony',
              style: GoogleFonts.poppins(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
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
            await ref.read(logoutProvider.future);
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
