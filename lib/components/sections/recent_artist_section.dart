import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/artist_card.dart';
import 'package:harmony/providers/spotify_providers.dart';

class RecentArtistsSection extends ConsumerWidget {
  const RecentArtistsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchArtistsFromRecentlyPlayed =
        ref.watch(fetchArtistsFromRecentlyPlayedProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent Artists",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: fetchArtistsFromRecentlyPlayed.when(
            data: (data) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ArtistCard(artist: data[index]);
                },
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => const Center(
              child: Text('Failed to load recent artists'),
            ),
          ),
        ),
      ],
    );
  }
}
