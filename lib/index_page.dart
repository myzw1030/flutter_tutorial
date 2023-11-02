import 'package:flutter/material.dart';
import 'package:flutter_tutorial/youtube/youtube_page.dart';

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
              text: 'YouTubeボタン',
              widget: YoutubePage(),
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
          MaterialPageRoute(
            builder: (context) => widget,
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
      child: Text(text),
    );
  }
}
