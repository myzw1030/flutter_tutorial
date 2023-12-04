import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/mercari/pages/home_page/home_page_view_model.dart';
import 'package:flutter_tutorial/mercari/pages/home_page/listing_info.dart';

class ListingList extends ConsumerWidget {
  const ListingList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchItems = ref.watch(listingItemProvider);
    return fetchItems.when(
      data: (data) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListingInfo(
                listingItem: data[index],
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
