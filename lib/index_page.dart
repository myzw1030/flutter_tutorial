import 'package:flutter/material.dart';
import 'package:flutter_tutorial/building/building_layout_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuildingLayoutPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
              ),
              child: const Text(
                'Tutorial1',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
