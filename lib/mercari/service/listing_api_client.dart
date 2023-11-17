import 'package:flutter_tutorial/mercari/model/listing_item.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'listing_api_client.g.dart';

@RestApi(baseUrl: 'https://flutter-tutorial7.web.app/api/v1/')
abstract class ListingApiClient {
  factory ListingApiClient(Dio dio, {String baseUrl}) = _ListingApiClient;

  @GET('mercari/index.json')
  Future<List<ListingItem>> fetchListingItems();
}
