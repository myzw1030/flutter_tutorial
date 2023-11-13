import 'package:flutter/material.dart';
import 'package:flutter_tutorial/residence/item_property/item_property_info.dart';

class ItemPropertyList extends StatelessWidget {
  const ItemPropertyList({super.key});

  final List<ItemPropertyInfo> _propertyData = const [
    ItemPropertyInfo(
      imagePath: 'residence_no_image.png',
      imagePath2: 'residence_property_image.png',
      title: 'SunnySide Apartments',
      price: '1,800万円',
      accessDescription: '山手線 渋谷駅 徒歩15分',
      unitDescription: '2LDK／35.50㎡ 東向き',
      buildingDetails: '6階/20階建 築3年',
    ),
    ItemPropertyInfo(
      imagePath: 'residence_property_image02.png',
      imagePath2: '',
      title: 'Harbor View Residences',
      price: '2,500万円',
      accessDescription: '中央線 吉祥寺駅 バス10分',
      unitDescription: '3DK／45.75㎡ 北向き',
      buildingDetails: '10階/25階建 築8年',
    ),
    ItemPropertyInfo(
      imagePath: 'residence_property_image03.png',
      imagePath2: 'residence_property_image04.png',
      title: 'Central Park Condo',
      price: '3,200万円',
      accessDescription: '丸ノ内線 新宿三丁目駅 徒歩5分',
      unitDescription: '1LDK／29.90㎡ 西向き',
      buildingDetails: '3階/30階建 築10年',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(_propertyData),
    );
  }
}
