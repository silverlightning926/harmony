import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harmony/components/navigation/song_appbar.dart';

class SongScreen extends ConsumerWidget {
  final String trackId;

  const SongScreen({
    super.key,
    required this.trackId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SongAppBar(trackId: trackId),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  const TabBar(
                    tabs: [
                      Tab(text: 'Info'),
                      Tab(text: 'Lyrics'),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: const TabBarView(
            children: [
              Center(child: Text('Info Content')),
              Center(child: Text('Lyrics Content')),
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
    return tabBar;
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
