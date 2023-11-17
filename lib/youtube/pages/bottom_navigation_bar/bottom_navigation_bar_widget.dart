import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.grey.shade900,
      iconSize: 30,
      selectedFontSize: 12,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'ホーム',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: '検索',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline,
            size: 56,
            weight: double.minPositive,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions),
          label: '登録チャンネル',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          label: 'ライブラリ',
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
