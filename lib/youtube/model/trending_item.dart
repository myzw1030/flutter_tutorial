import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_item.freezed.dart';

part 'trending_item.g.dart';

@freezed
class TrendingItem with _$TrendingItem {
  const factory TrendingItem({
    @Default('') String imagePath,
    @Default('') String iconPath,
    @Default('') String title,
    @Default('') String channelName,
    @Default(0) int numOfViews,
    @Default(0) int daysAgo,
  }) = _TrendingItem;

  factory TrendingItem.fromJson(Map<String, dynamic> json) =>
      _$TrendingItemFromJson(json);
}
