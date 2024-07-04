import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/artist_card/artist_card_data.dart';
import 'package:harmony/components/cards/artist_card/artist_card_loading.dart';
import 'package:harmony/providers/spotify_providers.dart';

class ArtistCard extends ConsumerWidget {
  const ArtistCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchArtistsFromRecentlyPlayed =
        ref.watch(fetchRecentlyPlayedArtistStreamProvider);
    return fetchArtistsFromRecentlyPlayed.when(
      data: (data) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ArtistCardData(artist: data[index]);
          },
        );
      },
      loading: () => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const ArtistCardLoading();
        },
      ),
      error: (error, stackTrace) {
        return const SizedBox.shrink();
      },
    );
  }
}
