import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/youtube/model/trending_item.dart';
import 'package:flutter_tutorial/youtube/service/trending_api_client.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// APIの取得の状態を管理
final trendingApiProvider = Provider((ref) {
  final dio = Dio();
  dio.interceptors.add(PrettyDioLogger());
  return TrendingApiClient(dio);
});

// 非同期で管理
final trendingItemProvider = FutureProvider.autoDispose<List<TrendingItem>>(
  (ref) async {
    final repository = ref.watch(trendingApiProvider);
    return repository.fetchTrendingItems();
  },
);
