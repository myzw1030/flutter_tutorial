import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/residence/service/property_api_client.dart';
import 'package:flutter_tutorial/residence/model/property_item.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// APIの取得の状態を管理
final propertyApiProvider = Provider((ref) {
  final dio = Dio();
  dio.interceptors.add(PrettyDioLogger());
  return PropertyApiClient(dio);
});

// 非同期で管理
final propertyItemProvider = FutureProvider.autoDispose<List<PropertyItem>>(
  (ref) async {
    final repository = ref.watch(propertyApiProvider);
    return repository.fetchPropertyItems();
  },
);
