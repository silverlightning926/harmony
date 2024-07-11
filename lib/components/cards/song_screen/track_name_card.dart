import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/components/cards/song_screen/track_info_card.dart';
import 'package:harmony/providers/spotify_providers.dart';

class TrackNameCard extends ConsumerWidget {
  final String trackId;
  const TrackNameCard({
    super.key,
    required this.trackId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final track = ref.watch(fetchTrackProvider(trackId));
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: track.when(
        data: (track) {
          return TrackInfoCard(title: 'Name', content: track.name!);
        },
        loading: () {
          return const SizedBox.shrink();
        },
        error: (error, stackTrace) {
          return Text(
            'Error fetching track',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          );
        },
      ),
    );
  }
}
