import 'package:flutter/material.dart';
import 'package:flutter_tutorial/youtube/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'package:flutter_tutorial/youtube/app_bar/app_bar_widget.dart';
import 'package:flutter_tutorial/youtube/item_categories/item_categories.dart';
import 'package:flutter_tutorial/youtube/item_trending/item_trending.dart';
import 'package:flutter_tutorial/youtube/item_trending/item_trending_header.dart';

class YoutubePage extends StatefulWidget {
  const YoutubePage({super.key});

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarWidget(),
      body: CustomScrollView(
        slivers: [
          ItemCategories(),
          ItemTrendingHeader(),
          ItemTrending(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
