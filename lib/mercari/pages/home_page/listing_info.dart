import 'package:flutter/material.dart';
import 'package:flutter_tutorial/mercari/model/listing_item.dart';

class ListingInfo extends StatelessWidget {
  const ListingInfo({
    super.key,
    required this.listingItem,
  });
  final ListingItem listingItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              listingItem.imagePath!,
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
          ),
          const SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listingItem.title!,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                '￥${listingItem.price}',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text(
                    '${listingItem.userCount}人が探しています',
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
              ),
            ),
            child: const Text(
              '出品する',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
