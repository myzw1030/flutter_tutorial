import 'package:flutter/material.dart';
import 'package:flutter_tutorial/mercari/home_page/listing_info.dart';

class ListingList extends StatelessWidget {
  const ListingList({super.key});

  final List<ListingInfo> _listingInfoData = const [
    ListingInfo(
      imagePath: 'mercari_item_image.png',
      title: 'sony a7iii',
      price: 5555.0,
      userCount: 560,
    ),
    ListingInfo(
      imagePath: 'mercari_item_image02.png',
      title: '少年の靴',
      price: 3335.0,
      userCount: 80,
    ),
    ListingInfo(
      imagePath: 'mercari_item_image03.png',
      title: '婦人の鞄',
      price: 321.0,
      userCount: 120,
    ),
    ListingInfo(
      imagePath: 'mercari_item_image04.png',
      title: 'ブラウン管テレビ',
      price: 201.0,
      userCount: 220,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(_listingInfoData),
    );
  }
}
