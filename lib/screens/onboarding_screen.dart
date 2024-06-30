import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: IntroductionScreen(
        dotsDecorator: const DotsDecorator(
          activeColor: Color(0xFF9C4DCC),
          size: Size(10, 10),
        ),
        showSkipButton: false,
        showDoneButton: false,
        showNextButton: false,
        bodyPadding: const EdgeInsets.all(20),
        pages: [
          PageViewModel(
            reverse: true,
            decoration: PageDecoration(
              bodyAlignment: Alignment.center,
              imageAlignment: Alignment.center,
              pageMargin: const EdgeInsets.all(10),
              pageColor: Colors.transparent,
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              bodyTextStyle: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            useScrollView: false,
            title: "Welcome to Harmony",
            body: "Delve deeper into your music",
            image: SvgPicture.asset(
                "assets/images/undraw_audio_player_re_cl20.svg"),
          ),
          PageViewModel(
            reverse: true,
            decoration: PageDecoration(
              bodyAlignment: Alignment.center,
              imageAlignment: Alignment.center,
              pageMargin: const EdgeInsets.all(10),
              pageColor: Colors.transparent,
              titleTextStyle: GoogleFonts.poppins(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              bodyTextStyle: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            useScrollView: false,
            title: "Gain New insights",
            body: "Find the meaning in your music",
            image: SvgPicture.asset("assets/images/undraw_music_re_a2jk.svg"),
          ),
          PageViewModel(
            reverse: true,
            decoration: PageDecoration(
                footerPadding: const EdgeInsets.all(10),
                pageMargin: const EdgeInsets.all(10),
                pageColor: Colors.transparent,
                titleTextStyle: GoogleFonts.poppins(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                bodyTextStyle: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                bodyPadding: const EdgeInsets.all(10)),
            useScrollView: false,
            title: "Connect To Spotify",
            bodyWidget: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xFF1DB954),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              child: const Text("Connect to Spotify"),
            ),
            image:
                SvgPicture.asset("assets/images/undraw_happy_music_g6wc.svg"),
          ),
        ],
      ),
    );
  }
}
