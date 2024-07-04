import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionVisibilityNotifier extends StateNotifier<bool> {
  SectionVisibilityNotifier() : super(true);

  void hide() => state = false;
  void show() => state = true;
}

final recentSongSectionVisibilityProvider =
    StateNotifierProvider<SectionVisibilityNotifier, bool>(
  (ref) => SectionVisibilityNotifier(),
);

final recentArtistSectionVisibilityProvider =
    StateNotifierProvider<SectionVisibilityNotifier, bool>(
  (ref) => SectionVisibilityNotifier(),
);

final recommendationSectionVisibilityProvider =
    StateNotifierProvider<SectionVisibilityNotifier, bool>(
  (ref) => SectionVisibilityNotifier(),
);
