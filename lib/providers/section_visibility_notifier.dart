import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SectionVisibilityNotifier extends StateNotifier<bool> {
  SectionVisibilityNotifier() : super(true);

  void hide() {
    if (kDebugMode) {
      print('hide');
    }
    state = false;
  }

  void show() {
    if (kDebugMode) {
      print('show');
    }
    state = true;
  }
}

final recentSongSectionVisibilityProvider =
    StateNotifierProvider<SectionVisibilityNotifier, bool>((ref) {
  if (kDebugMode) {
    print('recentSongSectionVisibilityProvider');
  }
  return SectionVisibilityNotifier();
});

final recentArtistSectionVisibilityProvider =
    StateNotifierProvider<SectionVisibilityNotifier, bool>((ref) {
  if (kDebugMode) {
    print('recentArtistSectionVisibilityProvider');
  }
  return SectionVisibilityNotifier();
});

final recommendationSectionVisibilityProvider =
    StateNotifierProvider<SectionVisibilityNotifier, bool>((ref) {
  if (kDebugMode) {
    print('recommendationSectionVisibilityProvider');
  }
  return SectionVisibilityNotifier();
});
