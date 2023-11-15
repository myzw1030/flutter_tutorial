import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_item.freezed.dart';

part 'trending_item.g.dart';

@freezed
class TrendingItem with _$TrendingItem {
  const factory TrendingItem({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'iconPath') String? iconPath,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'channelName') String? channelName,
    @JsonKey(name: 'numOfViews') int? numOfViews,
    @JsonKey(name: 'daysAgo') int? daysAgo,
  }) = _TrendingItem;

  factory TrendingItem.fromJson(Map<String, dynamic> json) =>
      _$TrendingItemFromJson(json);
}
