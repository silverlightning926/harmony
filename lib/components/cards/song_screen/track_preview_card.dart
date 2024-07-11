import 'package:audioplayers/audioplayers.dart' as audio;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/providers/spotify_providers.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class TrackPreviewCard extends ConsumerStatefulWidget {
  final String trackId;

  const TrackPreviewCard({
    super.key,
    required this.trackId,
  });

  @override
  ConsumerState<TrackPreviewCard> createState() => _TrackPreviewCardState();
}

class _TrackPreviewCardState extends ConsumerState<TrackPreviewCard> {
  late final audio.AudioPlayer player;

  bool isPlaying = false;

  Duration currentPosition = Duration.zero;
  Duration totalDuration = Duration.zero;
  double progress = 0;

  @override
  void initState() {
    super.initState();
    player = audio.AudioPlayer();
    player.setReleaseMode(audio.ReleaseMode.stop);
    player.onPlayerComplete.listen((event) {
      if (mounted) {
        setState(() {
          isPlaying = false;
          progress = 0;
        });
      }
    });
    player.onPositionChanged.listen((event) {
      if (mounted) {
        setState(() {
          currentPosition = event;
        });
      }
    });
    player.onDurationChanged.listen((event) {
      if (mounted) {
        setState(() {
          totalDuration = event;
        });
      }
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final track = ref.watch(fetchTrackProvider(widget.trackId));
    return track.when(
      data: (track) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Preview',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          if (isPlaying) {
                            player.pause();

                            setState(() {
                              progress = currentPosition.inMilliseconds /
                                  totalDuration.inMilliseconds;
                            });
                          } else {
                            audio.UrlSource urlSource = audio.UrlSource(
                              track.previewUrl!,
                            );
                            player.play(urlSource);
                          }
                          setState(() {
                            isPlaying = !isPlaying;
                          });
                        },
                        icon: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: isPlaying
                          ? totalDuration.inMilliseconds == 0
                              ? LinearProgressIndicator(
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Colors.green),
                                  backgroundColor:
                                      Colors.white.withOpacity(0.2),
                                )
                              : LinearProgressIndicator(
                                  value: currentPosition.inMilliseconds /
                                      totalDuration.inMilliseconds,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Colors.green),
                                  backgroundColor:
                                      Colors.white.withOpacity(0.2),
                                )
                          : LinearProgressIndicator(
                              value: progress,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.green),
                              backgroundColor: Colors.white.withOpacity(0.2),
                            ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
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
