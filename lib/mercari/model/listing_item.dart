import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_item.freezed.dart';

part 'listing_item.g.dart';

@freezed
class ListingItem with _$ListingItem {
  const factory ListingItem({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'userCount') int? userCount,
  }) = _ListingItem;

  factory ListingItem.fromJson(Map<String, dynamic> json) =>
      _$ListingItemFromJson(json);
}
