import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/movies_page_view_model.dart';

// キーワード検索を行う
class MoviesSearch extends ConsumerStatefulWidget {
  const MoviesSearch({super.key});

  @override
  MoviesSearchState createState() => MoviesSearchState();
}

class MoviesSearchState extends ConsumerState<MoviesSearch> {
  final TextEditingController _textController = TextEditingController();

  // フォーカス解除
  void _unFocus(BuildContext context) {
    final currentScope = FocusScope.of(context);
    if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  // 検索
  void _submitSearch() {
    final searchText = _textController.text;
    ref.read(moviesPageProvider.notifier).searchMovies(searchText);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const SizedBox.shrink(),
      leadingWidth: 0,
      backgroundColor: Colors.white,
      floating: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    hintText: 'キーワードを入力してください',
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          minimumSize: const Size(100, 50),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text('検索'),
                        onPressed: () {
                          _unFocus(context);
                          _submitSearch();
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
