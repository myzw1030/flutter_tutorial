import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_state.freezed.dart';

part 'qiita_state.g.dart';

@freezed
class QiitaState with _$QiitaState {
  const factory QiitaState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    @Default(<QiitaItem>[]) List<QiitaItem> qiitaItems,
    @Default('') String currentTag,
  }) = _QiitaState;
}

@freezed
class QiitaItem with _$QiitaItem {
  const factory QiitaItem({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'user') QiitaUser? user,
  }) = _QiitaItem;

  factory QiitaItem.fromJson(Map<String, dynamic> json) =>
      _$QiitaItemFromJson(json);
}

@freezed
class QiitaUser with _$QiitaUser {
  const factory QiitaUser({
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
  }) = _QiitaUser;

  factory QiitaUser.fromJson(Map<String, dynamic> json) =>
      _$QiitaUserFromJson(json);
}
