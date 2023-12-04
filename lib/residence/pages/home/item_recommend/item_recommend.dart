import 'package:flutter/material.dart';

class ItemRecommend extends StatelessWidget {
  const ItemRecommend({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Text(
                        'カウルのおすすめ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        '新着3件',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      '編集',
                      style: TextStyle(
                        color: Color(0xFF25A69A),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Color(0xFF25A69A),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade200,
              ),
              padding: const EdgeInsets.all(8),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.train,
                      ),
                      SizedBox(width: 6),
                      Text('東京駅・品川駅・川崎駅・目黒駅'),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        Icons.paid,
                      ),
                      SizedBox(width: 6),
                      Text('下限なし〜2,000万円'),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                      ),
                      SizedBox(width: 6),
                      Text('1R〜4LDK／10㎡以上／徒歩20分'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
