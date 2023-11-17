import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/youtube/pages/item_trending/item_trending_view_model.dart';
import 'package:flutter_tutorial/youtube/pages/item_trending/trend_info.dart';

class ItemTrending extends ConsumerWidget {
  const ItemTrending({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchItems = ref.watch(trendingItemProvider);
    return fetchItems.when(
      data: (data) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return TrendInfo(
                article: data[index],
              );
            },
            childCount: data.length,
          ),
        );
      },
      error: (error, stack) => const Text('error'),
      loading: () {
        return const SliverFillRemaining(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
