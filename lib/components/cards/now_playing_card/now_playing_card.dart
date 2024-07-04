import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/now_playing_card/now_playing_card_data.dart';
import 'package:harmony/components/cards/now_playing_card/now_playing_card_loading.dart';
import 'package:harmony/providers/spotify_providers.dart';

class NowPlayingCard extends ConsumerWidget {
  const NowPlayingCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playbackState = ref.watch(currentlyPlayingStateStreamProvider);

    return playbackState.when(
      data: (data) {
        return NowPlayingCardData(
          item: data.item!,
          isPlaying: data.isPlaying!,
        );
      },
      loading: () => const NowPlayingCardLoading(),
      error: (error, stackTrace) => const SizedBox.shrink(),
    );
  }
}
