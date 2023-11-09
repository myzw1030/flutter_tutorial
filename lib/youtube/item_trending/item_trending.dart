import 'package:flutter/material.dart';
import 'package:flutter_tutorial/youtube/item_trending/trend_info.dart';

class ItemTrending extends StatelessWidget {
  const ItemTrending({super.key});

  static const List<TrendInfo> _dummyMovieData = [
    TrendInfo(
      imagePath: 'assets/trending_img.png',
      iconPath: 'assets/trending_icon.jpg',
      title: 'This is ARASHI LIVE 2020.12.31" Digest Movie',
      subTitle: 'ARASHI・127万回視聴・1日前',
    ),
    TrendInfo(
      imagePath: 'assets/trending_img02.png',
      iconPath: 'assets/trending_icon02.png',
      title: 'lofi hip hop radio 📚 - beats to relax/study to',
      subTitle: 'lofi hip hop・200万回視聴・2日前',
    ),
    TrendInfo(
      imagePath: 'assets/trending_img03.png',
      iconPath: 'assets/trending_icon03.png',
      title: 'Chill Drive - Lofi hip hop mix ~ Stress Relief, Chill Music',
      subTitle: 'Chill Drive・321万回視聴・2日前',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(_dummyMovieData),
    );
  }
}
