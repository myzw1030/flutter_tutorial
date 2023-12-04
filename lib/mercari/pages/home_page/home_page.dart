import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tutorial/mercari/pages/home_page/listing_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            color: Colors.grey.shade300,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Image.asset(
                  'assets/mercari_header_image.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      child: const Text(
                        '出品へのショートカット',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShortcutButton(
                          icon: Icons.photo_camera_outlined,
                          text: '写真を撮る',
                          onTap: () {},
                        ),
                        ShortcutButton(
                          icon: Icons.photo,
                          text: 'アルバム',
                          onTap: () {},
                        ),
                        ShortcutButton(
                          icon: CupertinoIcons.barcode,
                          text: 'バーコード\n（本・コスメ）',
                          onTap: () {},
                        ),
                        ShortcutButton(
                          icon: Icons.edit_calendar_outlined,
                          text: '下書き一覧',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '売れやすい持ち物',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text('使わないモノを出品してみよう！'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'すべて見る＞',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const ListingList(),
      ],
    );
  }
}

// ショートカットボタン
class ShortcutButton extends StatelessWidget {
  const ShortcutButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  final void Function() onTap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        height: MediaQuery.sizeOf(context).width / 4,
        width: MediaQuery.sizeOf(context).width / 4 - 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 38,
            ),
            const SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
