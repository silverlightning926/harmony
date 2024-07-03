import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/song_card.dart';
import 'package:harmony/providers/spotify_providers.dart';

class RecentSongsSection extends ConsumerWidget {
  const RecentSongsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentlyPlayedState = ref.watch(recentlyPlayedStateStreamProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent Songs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: recentlyPlayedState.when(
            data: (data) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.items?.length ?? 0,
                itemBuilder: (context, index) {
                  return SongCard(item: data.items![index]);
                },
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => const Center(
              child: Text('Failed to load recent songs'),
            ),
          ),
        ),
      ],
    );
  }
}
