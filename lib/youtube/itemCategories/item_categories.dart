import 'package:flutter/material.dart';
import 'package:flutter_tutorial/youtube/itemCategories/item_grid.dart';

class ItemCategories extends StatelessWidget {
  ItemCategories({super.key});

  final itemCategoriesData = [
    const ItemGrid(
      icon: Icons.local_fire_department,
      color: Color(0xFF851a36),
      text: '急上昇',
    ),
    const ItemGrid(
      icon: Icons.music_note,
      color: Color(0xFF349988),
      text: '音楽',
    ),
    const ItemGrid(
      icon: Icons.gamepad,
      color: Color(0xFFA6706C),
      text: 'ゲーム',
    ),
    const ItemGrid(
      icon: Icons.feed,
      color: Color(0xFF114A80),
      text: 'ニュース',
    ),
    const ItemGrid(
      icon: Icons.highlight,
      color: Color(0xFF147B4F),
      text: '学び',
    ),
    const ItemGrid(
      icon: Icons.live_tv,
      color: Color(0xFFE26E35),
      text: 'ライブ',
    ),
    const ItemGrid(
      icon: Icons.sports,
      color: Color(0xFF0C7792),
      text: 'スポーツ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 4,
        children: itemCategoriesData,
      ),
    );
  }
}
