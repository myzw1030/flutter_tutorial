import 'package:flutter/material.dart';

class ItemTrendingHeader extends StatelessWidget {
  const ItemTrendingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(14),
        color: Colors.grey.shade900,
        child: const Text(
          '急上昇動画',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
