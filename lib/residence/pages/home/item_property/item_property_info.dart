import 'package:flutter/material.dart';
import 'package:flutter_tutorial/residence/model/property_item.dart';

class ItemPropertyInfo extends StatelessWidget {
  const ItemPropertyInfo({
    super.key,
    required this.propertyItem,
  });

  final PropertyItem propertyItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                    ),
                    child: Image.network(
                      propertyItem.imagePath!,
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).width / 2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                    ),
                    child: Image.network(
                      propertyItem.imagePath2!,
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).width / 2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
                left: 20,
                right: 20,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    propertyItem.title!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '${propertyItem.price}万円',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.train,
                          ),
                          const SizedBox(width: 6),
                          Text(propertyItem.accessDescription!),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(
                            Icons.paid,
                          ),
                          const SizedBox(width: 6),
                          Text(propertyItem.unitDescription!),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(
                            Icons.info_outline,
                          ),
                          const SizedBox(width: 6),
                          Text(propertyItem.buildingDetails!),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.grey.shade400,
                          ),
                          label: Text(
                            '興味なし',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.grey.shade400,
                          ),
                          label: Text(
                            'お気に入り',
                            style: TextStyle(
                              color: Colors.grey.shade800,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
