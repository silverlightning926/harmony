import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/now_playing_card.dart';
import 'package:harmony/components/navigation/subtitle_appbar.dart';
import 'package:harmony/components/sections/recent_artist_section.dart';
import 'package:harmony/components/sections/recent_song_section.dart';
import 'package:harmony/providers/spotify_providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playbackState = ref.watch(playbackStateStreamProvider);
    return PopScope(
      child: Scaffold(
        appBar: const SubtitleAppBar(),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            playbackState.when(
              data: (data) => NowPlayingCard(playbackState: data),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Text('Error: $error'),
            ),
            const SizedBox(height: 20),
            const RecentSongsSection(),
            const SizedBox(height: 20),
            const RecentArtistsSection(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
