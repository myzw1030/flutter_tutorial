import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/qiita/model/qiita_state.dart';
import 'package:flutter_tutorial/qiita/repository/qiita_repository.dart';

final qiitaViewModelProvider =
    StateNotifierProvider.autoDispose<QiitaViewModel, QiitaState>(
  QiitaViewModel.new,
);

class QiitaViewModel extends StateNotifier<QiitaState> {
  QiitaViewModel(this._ref) : super(const QiitaState());

  final Ref _ref;

  QiitaRepository get _qiitaRepository => _ref.read(qiitaRepositoryProvider);

  // 取得記事初期値設定しておく
  Future<void> fetchQiitaItems(String tag, {int perPage = 10}) async {
    state = state.copyWith(isLoading: true);

    final qiitaItems = await _qiitaRepository.fetchQiitaItems(tag, perPage);

    if (!mounted) {
      return;
    }

    if (qiitaItems.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        currentTag: tag,
        qiitaItems: qiitaItems,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
        qiitaItems: qiitaItems,
      );
    }
  }

  Future<void> onBackHome() async {
    state = state.copyWith(
      isLoading: false,
      isReadyData: false,
      currentTag: '',
    );
  }
}
