import 'package:dio/dio.dart';
import 'package:flutter_tutorial/qiita/model/qiita_state.dart';
import 'package:retrofit/retrofit.dart';

part 'qiita_api_client.g.dart';

@RestApi(baseUrl: 'https://qiita.com/api/v2/')
abstract class QiitaApiClient {
  factory QiitaApiClient(Dio dio, {String baseUrl}) = _QiitaApiClient;

  @GET('/tags/{tag}/items')
  Future<List<QiitaItem>> fetchQiitaItems(@Path('tag') String tag);
}
