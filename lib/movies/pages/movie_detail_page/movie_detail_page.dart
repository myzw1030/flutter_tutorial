import 'package:flutter/material.dart';
import 'package:flutter_tutorial/movies/pages/movie_detail_page/components/custom_app_bar.dart';
import 'package:flutter_tutorial/movies/pages/movie_detail_page/components/movie_detail_item.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({
    super.key,
    required this.movieId,
  });

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: MovieDetailItem(movieId: movieId),
    );
  }
}
