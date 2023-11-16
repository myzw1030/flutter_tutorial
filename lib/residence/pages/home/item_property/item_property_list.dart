import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/residence/pages/home/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/residence/pages/home/item_property/item_property_info.dart';

class ItemPropertyList extends ConsumerWidget {
  const ItemPropertyList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchItems = ref.watch(propertyItemListProvider);
    return fetchItems.when(
      data: (data) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return ItemPropertyInfo(
                propertyItem: data[index],
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
