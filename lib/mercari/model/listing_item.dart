import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_item.freezed.dart';

part 'listing_item.g.dart';

@freezed
class ListingItem with _$ListingItem {
  const factory ListingItem({
    @Default('') String imagePath,
    @Default('') String title,
    @Default(0) int price,
    @Default(0) int userCount,
  }) = _ListingItem;

  factory ListingItem.fromJson(Map<String, dynamic> json) =>
      _$ListingItemFromJson(json);
}
