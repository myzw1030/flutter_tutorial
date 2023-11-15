import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/youtube/item_trending/trend_info.dart';
import 'package:flutter_tutorial/youtube/model/api/trending_api_client.dart';
import 'package:flutter_tutorial/youtube/model/trending_item.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ItemTrending extends StatefulWidget {
  const ItemTrending({super.key});

  @override
  State<ItemTrending> createState() => _ItemTrendingState();
}

class _ItemTrendingState extends State<ItemTrending> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchTrendingItems(),
      builder: (BuildContext context, snapshot) {
        // 通信中はローディング
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, index) {
                return TrendInfo(
                  article: snapshot.data![index],
                );
              },
              childCount: snapshot.data!.length,
            ),
          );
        }
      },
    );
  }

  // API
  Future<List<TrendingItem>> fetchTrendingItems() async {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    final client = TrendingApiClient(dio);
    return client.fetchTrendingItems();
  }
}
