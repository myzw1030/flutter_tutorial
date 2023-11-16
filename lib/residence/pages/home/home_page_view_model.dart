import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/residence/model/api/property_api_client.dart';
import 'package:flutter_tutorial/residence/model/property_item.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// APIの取得の状態を管理する
final propertyItemProvider = Provider((ref) {
  final dio = Dio();
  dio.interceptors.add(PrettyDioLogger());
  return PropertyApiClient(dio);
});

// 上記を非同期で管理する
final propertyItemListProvider = FutureProvider<List<PropertyItem>>(
  (ref) async {
    final propertyItem = ref.read(propertyItemProvider);
    return propertyItem.fetchPropertyItems();
  },
);
