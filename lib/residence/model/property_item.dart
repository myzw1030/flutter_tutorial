import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_item.freezed.dart';

part 'property_item.g.dart';

@freezed
class PropertyItem with _$PropertyItem {
  const factory PropertyItem({
    @Default('') String imagePath,
    @Default('') String imagePath2,
    @Default('') String title,
    @Default(0) int price,
    @Default('') String accessDescription,
    @Default('') String unitDescription,
    @Default('') String buildingDetails,
  }) = _PropertyItem;

  factory PropertyItem.fromJson(Map<String, dynamic> json) =>
      _$PropertyItemFromJson(json);
}
