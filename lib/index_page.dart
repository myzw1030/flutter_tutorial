import 'package:flutter/material.dart';
import 'package:flutter_tutorial/qiita/view/qiita_page.dart';
import 'package:flutter_tutorial/async/async_page.dart';
import 'package:flutter_tutorial/youtube/youtube_page.dart';
import 'package:flutter_tutorial/animation/animation_page.dart';
import 'package:flutter_tutorial/building/building_layout_page.dart';
import 'package:flutter_tutorial/mercari/pages/mercari_page.dart';
import 'package:flutter_tutorial/residence/residence_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageButton(
              text: 'Tutorial1',
              widget: BuildingLayoutPage(),
            ),
            PageButton(
              text: 'Tutorial1.1',
              widget: AnimationPage(),
            ),
            PageButton(
              text: 'YouTubeボタン',
              widget: YoutubePage(),
            ),
            PageButton(
              text: 'Tutorial2.2',
              widget: ResidencePage(),
            ),
            PageButton(
              text: 'Tutorial2.3',
              widget: MercariPage(),
            ),
            PageButton(
              text: 'Async',
              widget: AsyncPage(),
            ),
            PageButton(
              text: 'Tutorial6',
              widget: QiitaPage(),
            ),
          ],
        ),
      ),
    );
  }
}

// 各チュートリアルのページ遷移ボタン
class PageButton extends StatelessWidget {
  const PageButton({
    required this.text,
    required this.widget,
    super.key,
  });

  final Widget widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<double>(
            builder: (context) => widget,
          ),
        );
      },
      child: Text(text),
    );
  }
}
