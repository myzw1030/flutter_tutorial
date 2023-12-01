import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/model/movies_search_data/movies_list_data.dart';

import 'package:flutter_tutorial/movies/pages/movie_detail_page/movie_detail_page.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/movies_page_view_model.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            _MoviesSearch(),
            _MoviesList(),
          ],
        ),
      ),
    );
  }
}

// キーワード検索を行う
class _MoviesSearch extends ConsumerStatefulWidget {
  const _MoviesSearch();

  @override
  _MoviesSearchState createState() => _MoviesSearchState();
}

class _MoviesSearchState extends ConsumerState<_MoviesSearch> {
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
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
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
    );
  }
}

// 映画の一覧を表示
class _MoviesList extends ConsumerWidget {
  const _MoviesList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(moviesPageProvider);

    // ローディング
    if (state.isLoading) {
      return const SliverFillRemaining(
        child: Center(child: CircularProgressIndicator()),
      );
    }
    return SliverPadding(
      padding: const EdgeInsets.only(
        right: 16,
        bottom: 16,
        left: 16,
      ),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            final moviesItem = state.movies.results[index];
            return InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute<MovieDetailPage>(
                    builder: (context) => MovieDetailPage(
                      movieId: moviesItem.id ?? 0,
                    ),
                  ),
                ),
              },
              child: _ListCard(
                moviesItems: moviesItem,
              ),
            );
          },
          childCount: state.movies.results.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
          childAspectRatio: 0.6,
        ),
      ),
    );
  }
}

// 映画一覧のリストアイテム
class _ListCard extends StatelessWidget {
  const _ListCard({
    required this.moviesItems,
  });

  final MoviesListData moviesItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 2,
          height: MediaQuery.sizeOf(context).width / 2 * 1.2,
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 4,
            child: Image.network(
              moviesItems.fullPosterPath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Text(
            moviesItems.originalTitle ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
