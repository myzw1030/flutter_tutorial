import 'package:flutter/material.dart';
import 'package:flutter_tutorial/mercari/home_page/home_page.dart';

class MercariPage extends StatelessWidget {
  const MercariPage({super.key});

  final int _selectedIndex = 0;
  final _pageWidgets = const [
    HomePage(),
  ];

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
          automaticallyImplyLeading: false,
          title: const Text(
            '出品',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: _pageWidgets.elementAt(_selectedIndex),
        floatingActionButton: SizedBox(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.red,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.photo_camera_outlined,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.shade500,
          backgroundColor: Colors.white,
          iconSize: 30,
          selectedFontSize: 16,
          unselectedFontSize: 14,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Icons.home,
                  ),
                  Positioned(
                    top: -5,
                    right: -10,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Text(
                        '5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              label: 'ホーム',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'お知らせ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera_outlined),
              label: '出品',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_comment_outlined,
              ),
              label: 'メッセージ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
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
