import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/mercari/service/listing_api_client.dart';
import 'package:flutter_tutorial/mercari/model/listing_item.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// APIの取得の状態を管理
final listingApiProvider = Provider((ref) {
  final dio = Dio();
  dio.interceptors.add(PrettyDioLogger());
  return ListingApiClient(dio);
});

// 非同期で管理
final listingItemProvider = FutureProvider.autoDispose<List<ListingItem>>(
  (ref) async {
    final repository = ref.watch(listingApiProvider);
    return repository.fetchListingItems();
  },
);
