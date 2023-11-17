import 'package:flutter/material.dart';
import 'package:flutter_tutorial/youtube/pages/item_categories/item_categories.dart';
import 'package:flutter_tutorial/youtube/pages/item_trending/item_trending.dart';
import 'package:flutter_tutorial/youtube/pages/item_trending/item_trending_header.dart';

class YoutubePage extends StatefulWidget {
  const YoutubePage({super.key});

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/youtube_logo.png',
              width: 35,
            ),
            const SizedBox(width: 4),
            const Text(
              'YouTube',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.cast_connected,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              minimumSize: const Size(
                20,
                20,
              ),
              backgroundColor: Colors.purple.shade400,
            ),
            onPressed: () {},
            child: const Text(
              't',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: const CustomScrollView(
        slivers: [
          ItemCategories(),
          ItemTrendingHeader(),
          ItemTrending(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
