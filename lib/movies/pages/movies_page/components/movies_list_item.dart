import 'package:flutter/material.dart';
import 'package:flutter_tutorial/movies/model/movies_search_data/movies_list_data.dart';

// 映画一覧のリストアイテム
class MoviesListItem extends StatelessWidget {
  const MoviesListItem({
    super.key,
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
