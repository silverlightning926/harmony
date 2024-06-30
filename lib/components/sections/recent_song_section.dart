import 'package:flutter/material.dart';
import 'package:harmony/components/cards/song_card.dart';

class RecentSongsSection extends StatelessWidget {
  const RecentSongsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent Songs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const SongCard(),
            ),
          ),
        ),
      ],
    );
  }
}
