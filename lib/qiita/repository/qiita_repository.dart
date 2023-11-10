import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/qiita/api/qiita_api_client.dart';
import 'package:flutter_tutorial/qiita/model/qiita_state.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioProvider = Provider<Dio>((_) {
  return Dio()..interceptors.add(PrettyDioLogger());
});

final qiitaApiClientProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  return QiitaApiClient(dio);
});

final qiitaRepositoryProvider = Provider<QiitaRepository>(
  QiitaRepository.new,
);

class QiitaRepository {
  QiitaRepository(this._ref);

  final Ref _ref;

  QiitaApiClient get _apiClient => _ref.read(qiitaApiClientProvider);

  Future<List<QiitaItem>> fetchQiitaItems(String tag) async {
    return _apiClient.fetchQiitaItems(tag);
  }
}
