import 'package:flutter/material.dart';
import 'package:flutter_tutorial/movies/pages/movies_page/movies_header.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  // フォーカス解除
  void _unFocus(BuildContext context) {
    final currentScope = FocusScope.of(context);
    if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => _unFocus(context),
        child: const Scaffold(
          body: CustomScrollView(
            slivers: [
              MoviesHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
