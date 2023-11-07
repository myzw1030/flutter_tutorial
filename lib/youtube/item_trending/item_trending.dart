import 'package:flutter/material.dart';
import 'package:flutter_tutorial/youtube/item_trending/item_list.dart';

class ItemTrending extends StatelessWidget {
  ItemTrending({super.key});
  final itemTrendingData = [
    const ItemList(),
    const ItemList(),
    const ItemList(),
    const ItemList(),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(itemTrendingData),
    );
  }
}
