import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tutorial/qiita/model/qiita_item.dart';

part 'qiita_state.freezed.dart';

@freezed
class QiitaState with _$QiitaState {
  const factory QiitaState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    @Default(<QiitaItem>[]) List<QiitaItem> qiitaItems,
    @Default('') String currentTag,
  }) = _QiitaState;
}
