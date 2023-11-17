import 'package:flutter_tutorial/youtube/model/trending_item.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'trending_api_client.g.dart';

@RestApi(baseUrl: 'https://flutter-tutorial7.web.app/api/v1/')
abstract class TrendingApiClient {
  factory TrendingApiClient(Dio dio, {String baseUrl}) = _TrendingApiClient;

  @GET('youtube/index.json')
  Future<List<TrendingItem>> fetchTrendingItems();
}
