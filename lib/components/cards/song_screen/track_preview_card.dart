import 'package:audioplayers/audioplayers.dart' as audio;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/providers/spotify_providers.dart';

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

  @override
  void initState() {
    super.initState();
    player = audio.AudioPlayer();
    player.setReleaseMode(audio.ReleaseMode.stop);
    player.onPlayerComplete.listen((event) {
      if (mounted) {
        setState(() {
          isPlaying = false;
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
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: track.when(
        data: (track) {
          return Column(
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
                            ? const LinearProgressIndicator()
                            : LinearProgressIndicator(
                                value: currentPosition.inMilliseconds /
                                    totalDuration.inMilliseconds,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    Colors.green),
                                backgroundColor: Colors.white.withOpacity(0.2),
                              )
                        : const LinearProgressIndicator(
                            value: 0,
                          ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          );
        },
        loading: () {
          return Column(
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
              const LinearProgressIndicator(),
            ],
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
      ),
    );
  }
}
