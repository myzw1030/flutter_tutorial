import 'package:dio/dio.dart';
import 'package:flutter_tutorial/residence/model/api/property_api_client.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/residence/model/property_item.dart';
import 'package:flutter_tutorial/residence/pages/home/item_property/item_property_info.dart';

class ItemPropertyList extends StatefulWidget {
  const ItemPropertyList({super.key});

  @override
  State<ItemPropertyList> createState() => _ItemPropertyListState();
}

class _ItemPropertyListState extends State<ItemPropertyList> {
  late Future<List<PropertyItem>> _data;

  @override
  void initState() {
    super.initState();
    _data = fetchTrendingItems();
  }

  Future<List<PropertyItem>> fetchTrendingItems() async {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    final client = PropertyApiClient(dio);
    return client.fetchTrendingItems();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _data,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, index) {
                return ItemPropertyInfo(
                  propertyItem: snapshot.data![index],
                );
              },
              childCount: snapshot.data!.length,
            ),
          );
        }
      },
    );
  }
}
