import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/artist_card/artist_card.dart';
import 'package:harmony/providers/section_visibility_notifier.dart';

class RecentArtistsSection extends ConsumerWidget {
  const RecentArtistsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!ref.watch(recentArtistSectionVisibilityProvider)) {
      return const SizedBox.shrink();
    }

    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Artists",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ArtistCard(),
          ),
        ],
      ),
    );
  }
}
