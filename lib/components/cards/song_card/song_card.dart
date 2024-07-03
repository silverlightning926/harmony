import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/song_card/song_card_data.dart';
import 'package:harmony/components/cards/song_card/song_card_loading.dart';
import 'package:harmony/providers/spotify_providers.dart';

class SongCard extends ConsumerWidget {
  const SongCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentlyPlayedState = ref.watch(recentlyPlayedStateStreamProvider);
    return recentlyPlayedState.when(
      data: (data) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.items?.length ?? 0,
          itemBuilder: (context, index) {
            return SongCardData(item: data.items![index]);
          },
        );
      },
      loading: () => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const SongCardLoading();
        },
      ),
      error: (error, stackTrace) => const Center(
        child: Text('Failed to load recent songs'),
      ),
    );
  }
}
