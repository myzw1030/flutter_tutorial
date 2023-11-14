import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/qiita/model/qiita_state.dart';
import 'package:flutter_tutorial/qiita/repository/qiita_repository.dart';

// QiitaViewModel のインスタンスを生成
final qiitaViewModelProvider =
    StateNotifierProvider.autoDispose<QiitaViewModel, QiitaState>(
  QiitaViewModel.new,
);

// QiitaState の状態を管理
class QiitaViewModel extends StateNotifier<QiitaState> {
  QiitaViewModel(this._ref) : super(const QiitaState());

  final Ref _ref;

  // QiitaRepositoryの取得
  QiitaRepository get _qiitaRepository => _ref.read(qiitaRepositoryProvider);

  // Qiitaアイテムの取得
  Future<void> fetchQiitaItems(String tag) async {
    state = state.copyWith(isLoading: true);

    // リポジトリからデータ取得
    final qiitaItems = await _qiitaRepository.fetchQiitaItems(tag);

    if (!mounted) {
      return;
    }

    // 状態を更新
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

  // ホームに戻る処理
  Future<void> onBackHome() async {
    state = state.copyWith(
      isLoading: false,
      isReadyData: false,
      currentTag: '',
    );
  }
}
