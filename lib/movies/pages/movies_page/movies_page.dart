import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/model/movies_search_data/movies_list_data.dart';

import 'package:flutter_tutorial/movies/pages/movie_detail_page/movie_detail_page.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/movies_page_view_model.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MoviesPage extends ConsumerStatefulWidget {
  const MoviesPage({super.key});

  @override
  MoviesPageState createState() => MoviesPageState();
}

class MoviesPageState extends ConsumerState<MoviesPage> {
  final scrollController = ScrollController();
  // スクロール位置での処理
  void scrollControllerListener() {
    scrollController.addListener(() {
      // 現在のスクロール位置 / 最大スクロール範囲 = スクロールの進行度合いを計算
      final scrollValue =
          scrollController.offset / scrollController.position.maxScrollExtent;
      // スクロール位置のしきい値
      const scrollThreshold = 0.9;
      if (scrollValue > scrollThreshold) {
        ref.read(moviesPageProvider.notifier).fetchMoviesMoreItems();
      }
    });
  }

  @override
  void initState() {
    super.initState();

    // スクロールリスナー
    scrollControllerListener();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(moviesPageProvider);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            const _MoviesSearch(),
            const _MoviesList(),
            // 無限スクロール用のローディング
            if (state.isMoreLoading)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
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

// 映画の一覧を表示
class _MoviesList extends ConsumerStatefulWidget {
  const _MoviesList();

  @override
  _MoviesListState createState() => _MoviesListState();
}

class _MoviesListState extends ConsumerState<_MoviesList> {
  @override
  void initState() {
    super.initState();
    // 初回ビルドが終了するまで状態変更を待つことで、ビルド中に状態変更してクラッシュすることを防ぐ
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 初回は人気映画を表示する
      ref.read(moviesPageProvider.notifier).fetchPopularMoviesItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(moviesPageProvider);
    final moviesItem = state.movies.results;

    // 検索時のローディング
    if (state.isSearchLoading) {
      return SliverFillRemaining(
        child: Center(
          child: LoadingAnimationWidget.bouncingBall(
            color: Colors.red,
            size: 80,
          ),
        ),
      );
    }
    // リストが空の場合
    if (moviesItem.isEmpty) {
      return const SliverFillRemaining(
        child: Center(
          child: Text(
            '検索結果がありません',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else {
      return SliverPadding(
        padding: const EdgeInsets.only(
          right: 16,
          bottom: 16,
          left: 16,
        ),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final moviesItemIndex = moviesItem[index];
              return InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute<MovieDetailPage>(
                      builder: (context) => MovieDetailPage(
                        movieId: moviesItemIndex.id ?? 0,
                      ),
                    ),
                  ),
                },
                child: _ListCard(
                  moviesItems: moviesItemIndex,
                ),
              );
            },
            childCount: moviesItem.length,
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
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/404_image.png',
                  fit: BoxFit.contain,
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Text(
            moviesItems.title ?? '',
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
