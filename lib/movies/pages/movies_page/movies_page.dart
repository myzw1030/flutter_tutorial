import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/components/movies_list.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/components/movies_search.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/movies_page_view_model.dart';

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
            const MoviesSearch(),
            const MoviesList(),
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
