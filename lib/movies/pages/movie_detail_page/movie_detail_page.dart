import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/movies/pages/movie_detail_page/movie_detail_page_view_model.dart';
import 'package:intl/intl.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({
    super.key,
    required this.movieId,
  });

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const _AppBar(),
        body: _DetailItem(movieId: movieId),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
          size: 32,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _DetailItem extends ConsumerWidget {
  const _DetailItem({required this.movieId});

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
      return const Center(child: CircularProgressIndicator());
    }
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                state.movieDetail.fullBackdropPath,
                fit: BoxFit.contain,
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
