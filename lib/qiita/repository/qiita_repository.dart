import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/qiita/model/api/qiita_api_client.dart';
import 'package:flutter_tutorial/qiita/model/qiita_item.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// デバッグ情報をログに出力
final dioProvider = Provider<Dio>((_) {
  return Dio()..interceptors.add(PrettyDioLogger());
});

// QiitaApiClient のインスタンス生成
final qiitaApiClientProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  return QiitaApiClient(dio);
});

// QiitaRepository のインスタンス生成
final qiitaRepositoryProvider = Provider<QiitaRepository>(
  QiitaRepository.new,
);

// Qiitaのアイテムを取得する
class QiitaRepository {
  QiitaRepository(this._ref);

  final Ref _ref;

  QiitaApiClient get _apiClient => _ref.read(qiitaApiClientProvider);

  Future<List<QiitaItem>> fetchQiitaItems(String tag) async {
    return _apiClient.fetchQiitaItems(tag);
  }
}
