import 'package:flutter/material.dart';
import 'package:flutter_tutorial/residence/pages/home/item_property/item_property_list.dart';
import 'package:flutter_tutorial/residence/pages/home/item_recommend/item_recommend.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: CustomScrollView(
        slivers: [
          ItemRecommend(),
          SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          ItemPropertyList(),
        ],
      ),
    );
  }
}
