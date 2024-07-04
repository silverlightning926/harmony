import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/song_card/song_card.dart';
import 'package:harmony/providers/section_visibility_notifier.dart';

class RecentSongsSection extends ConsumerWidget {
  const RecentSongsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!ref.watch(recentSongSectionVisibilityProvider)) {
      return const SizedBox.shrink();
    }

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Songs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        SizedBox(height: 150, child: SongCard()),
      ],
    );
  }
}
