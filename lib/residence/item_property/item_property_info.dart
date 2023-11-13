import 'package:flutter/material.dart';

class ItemPropertyInfo extends StatelessWidget {
  const ItemPropertyInfo({
    super.key,
    required this.imagePath,
    required this.imagePath2,
    required this.title,
    required this.price,
    required this.accessDescription,
    required this.unitDescription,
    required this.buildingDetails,
  });

  final String imagePath;
  final String imagePath2;
  final String title;
  final String price;
  final String accessDescription;
  final String unitDescription;
  final String buildingDetails;

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
                      topRight: Radius.zero,
                    ),
                    child: Image.asset(
                      imagePath.isNotEmpty
                          ? 'assets/$imagePath'
                          : 'assets/residence_no_image.png',
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).width / 2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(16),
                    ),
                    child: Image.asset(
                      imagePath2.isNotEmpty
                          ? 'assets/$imagePath2'
                          : 'assets/residence_no_image.png',
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
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    price,
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
                          Text(accessDescription),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(
                            Icons.paid,
                          ),
                          const SizedBox(width: 6),
                          Text(unitDescription),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(
                            Icons.info_outline,
                          ),
                          const SizedBox(width: 6),
                          Text(buildingDetails),
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
