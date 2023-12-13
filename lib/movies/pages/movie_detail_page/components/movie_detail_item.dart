import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/pages/movie_detail_page/movie_detail_page_view_model.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MovieDetailItem extends ConsumerWidget {
  const MovieDetailItem({super.key, required this.movieId});

  final int movieId;

  // フォーマット：公開日（ex:2023-10-12を2023年10月12日に整形）
  String formatReleaseDate(String releaseDate) {
    if (releaseDate.isEmpty) {
      return '不明';
    }
    final dateTime = DateTime.parse(releaseDate);
    return DateFormat('yyyy年MM月dd日').format(dateTime);
  }

  // フォーマット：上映時間（'分'で返ってくるので、○時間△分に整形）
  String formatRunTime(int? runtime) {
    if (runtime == null) {
      return '不明';
    }
    // 時間（整数部分）
    final hour = runtime ~/ 60;
    // 分（余り）
    final minutes = runtime % 60;
    if (minutes == 0) {
      return '$hour時間';
    } else {
      return '$hour時間$minutes分';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(movieDetailPageProvider(movieId));

    // ローディング
    if (state.isLoading) {
      return Center(
        child: LoadingAnimationWidget.flickr(
          leftDotColor: Colors.greenAccent,
          rightDotColor: Colors.redAccent,
          size: 80,
        ),
      );
    }
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                state.movieDetail.fullBackdropPath,
                height: MediaQuery.sizeOf(context).width * 0.7,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/404_image.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
              Image.network(
                state.movieDetail.fullPosterPath,
                fit: BoxFit.contain,
                width: MediaQuery.sizeOf(context).width / 3.5,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/404_image.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 14,
            ),
            child: Column(
              children: [
                Text(
                  state.movieDetail.title ?? '',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '公開日：${formatReleaseDate(
                          state.movieDetail.releaseDate ?? '',
                        )}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '上映時間：${formatRunTime(state.movieDetail.runtime)}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (state.movieDetail.overview != '') ...[
                        const SizedBox(height: 20),
                        const Text(
                          'あらすじ：',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          state.movieDetail.overview ?? '',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
