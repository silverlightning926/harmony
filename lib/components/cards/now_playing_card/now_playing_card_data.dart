import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harmony/models/currently_playing_state/currently_playing_state.dart';

class NowPlayingCardData extends StatelessWidget {
  final CurrentlyPlayingState playbackState;
  final bool isPlaying;

  const NowPlayingCardData({
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
        child: Animate(
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
            )
          ],
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
                                    style: GoogleFonts.poppins(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 4,
                                    maxFontSize: 30,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 3),
                              SizedBox(
                                height: 20,
                                child: AutoSizeText(
                                  playbackState.item?.artists
                                          ?.map((artist) => artist.name)
                                          .join(', ') ??
                                      '',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  maxFontSize: 16,
                                  maxLines: 1,
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
      ),
    );
  }
}
