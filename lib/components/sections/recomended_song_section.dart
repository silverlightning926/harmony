import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/cards/suggestion_card.dart';
import 'package:harmony/providers/section_visibility_notifier.dart';

class RecomendedSongSection extends ConsumerWidget {
  const RecomendedSongSection({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!ref.watch(recommendationSectionVisibilityProvider)) {
      return const SizedBox.shrink();
    }
    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recomended Songs",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: SuggestionCard(),
          ),
        ],
      ),
    );
  }
}
