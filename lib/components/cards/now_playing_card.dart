import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/models/playback_state.dart';

class NowPlayingCard extends StatelessWidget {
  final PlaybackState playbackState;
  final bool isPlaying;

  const NowPlayingCard({
    super.key,
    required this.playbackState,
    required this.isPlaying,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isPlaying,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Material(
            child: InkWell(
              onTap: () => {},
              child: Ink(
                height: 200,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    matchTextDirection: true,
                    image: NetworkImage(
                      playbackState.item?.album?.images?.first.url ?? '',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Currently Playing",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.music_note),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 100,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: AutoSizeText(
                                  playbackState.item?.name ?? '',
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 4,
                                  maxFontSize: 30,
                                ),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              playbackState.item?.artists
                                      ?.map((artist) => artist.name)
                                      .join(', ') ??
                                  '',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
