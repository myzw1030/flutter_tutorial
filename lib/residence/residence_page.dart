import 'package:flutter/material.dart';
import 'package:flutter_tutorial/residence/item_property_info/item_property_info.dart';
import 'package:flutter_tutorial/residence/item_recommend/item_recommend.dart';

class ResidencePage extends StatelessWidget {
  const ResidencePage({super.key});

  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xFF25A69A),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width - 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade100,
                          foregroundColor: const Color(0xFF25A69A),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'おすすめ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade100,
                              foregroundColor: const Color(0xFF25A69A),
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'リフォーム',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: -5,
                            right: -5,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFF25A69A),
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(8),
          child: CustomScrollView(
            slivers: [
              ItemRecommend(),
              SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              ItemPropertyInfo(),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF25A69A),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                ),
                Text(
                  '物件',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xFF25A69A),
          unselectedItemColor: Colors.grey.shade400,
          backgroundColor: Colors.white,
          iconSize: 30,
          selectedFontSize: 16,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ホーム',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'お気に入り',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Icons.message,
                  ),
                  Positioned(
                    top: -5,
                    right: -10,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              label: 'メッセージ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'マイページ',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }
}
