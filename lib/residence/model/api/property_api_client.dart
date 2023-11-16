import 'package:flutter_tutorial/residence/model/property_item.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'property_api_client.g.dart';

@RestApi(baseUrl: 'https://flutter-tutorial7.web.app/api/v1/')
abstract class PropertyApiClient {
  factory PropertyApiClient(Dio dio, {String baseUrl}) = _PropertyApiClient;

  @GET('residence/index.json')
  Future<List<PropertyItem>> fetchPropertyItems();
}
