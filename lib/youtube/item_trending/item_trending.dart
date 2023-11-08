import 'package:flutter/material.dart';
import 'package:flutter_tutorial/youtube/item_trending/item_list.dart';

class ItemTrending extends StatelessWidget {
  const ItemTrending({super.key});
  final List<ItemList> itemTrendingData = const [
    ItemList(),
    ItemList(),
    ItemList(),
    ItemList(),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(itemTrendingData),
    );
  }
}
