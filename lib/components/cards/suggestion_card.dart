import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/song_card/song_card_data.dart';
import 'package:harmony/components/cards/song_card/song_card_loading.dart';
import 'package:harmony/providers/section_visibility_notifier.dart';
import 'package:harmony/providers/spotify_providers.dart';

class SuggestionCard extends ConsumerWidget {
  const SuggestionCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentlyPlayedState = ref.watch(fetchRecommendationsProvider);

    return recentlyPlayedState.when(
      data: (data) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return SongCardData(track: data[index]);
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
      error: (error, stackTrace) {
        Future.microtask(() {
          ref.read(recommendationSectionVisibilityProvider.notifier).hide();
        });
        return const SizedBox.shrink();
      },
    );
  }
}
