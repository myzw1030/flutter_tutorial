import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/pages/movie_detail_page/movie_detail_page.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/components/movies_list_item.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/movies_page_view_model.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// 映画の一覧を表示
class MoviesList extends ConsumerStatefulWidget {
  const MoviesList({super.key});

  @override
  MoviesListState createState() => MoviesListState();
}

class MoviesListState extends ConsumerState<MoviesList> {
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
                child: MoviesListItem(
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
