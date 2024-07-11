import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/components/cards/song_screen/track_info_card.dart';
import 'package:harmony/providers/spotify_providers.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class TrackReleaseDateCard extends ConsumerWidget {
  final String trackId;

  const TrackReleaseDateCard({
    super.key,
    required this.trackId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final track = ref.watch(fetchTrackProvider(trackId));
    return track.when(
      data: (track) {
        DateTime? releaseDate;
        String format = '';

        if (track.album!.releaseDatePrecision! == 'day') {
          releaseDate = DateTime.parse(track.album!.releaseDate!);
          format = 'D, M j, Y';
        } else if (track.album!.releaseDatePrecision! == 'month') {
          final parts = track.album!.releaseDate!.split('-');
          releaseDate = DateTime(int.parse(parts[0]), int.parse(parts[1]));
          format = 'MMMM y';
        } else if (track.album!.releaseDatePrecision! == 'year') {
          final parts = track.album!.releaseDate!.split('-');
          releaseDate = DateTime(int.parse(parts[0]));
          format = 'Y';
        }

        return Animate(
          effects: const [
            MoveEffect(
              begin: Offset(0, 10),
              end: Offset(0, 0),
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300),
            ),
            FadeEffect(
              begin: 0,
              end: 1,
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300),
            ),
          ],
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TrackInfoCard(
              title: 'Released',
              content: releaseDate != null
                  ? DateTimeFormat.format(releaseDate, format: format)
                  : 'Unknown',
            ),
          ),
        );
      },
      loading: () {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Shimmer(
            child: Container(
              color: Colors.white.withOpacity(0.1),
              height: 100,
            ),
          ),
        );
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
    );
  }
}
