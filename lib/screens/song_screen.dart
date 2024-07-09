import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/navigation/song_appbar.dart';
import 'package:harmony/providers/spotify_providers.dart';

class SongScreen extends ConsumerWidget {
  final String trackId;

  const SongScreen({
    super.key,
    required this.trackId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: Implement UI based on track data
    final track = ref.watch(fetchTrackProvider(trackId));

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SongAppBar(trackId: trackId),
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                const TabBar(
                  tabs: [
                    Tab(
                      text: 'Info',
                    ),
                    Tab(
                      text: 'Lyrics',
                    ),
                  ],
                ),
              ),
            ),
          ],
          body: TabBarView(
            children: [
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  20,
                  (index) => Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 100,
                    color: Colors.primaries[index % Colors.primaries.length],
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  20,
                  (index) => Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 100,
                    color: Colors.primaries[index % Colors.primaries.length],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(child: tabBar);
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
