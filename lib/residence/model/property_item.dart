import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_item.freezed.dart';

part 'property_item.g.dart';

@freezed
class PropertyItem with _$PropertyItem {
  const factory PropertyItem({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'imagePath2') String? imagePath2,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'accessDescription') String? accessDescription,
    @JsonKey(name: 'unitDescription') String? unitDescription,
    @JsonKey(name: 'buildingDetails') String? buildingDetails,
  }) = _PropertyItem;

  factory PropertyItem.fromJson(Map<String, dynamic> json) =>
      _$PropertyItemFromJson(json);
}
