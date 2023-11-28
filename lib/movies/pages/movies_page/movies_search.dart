import 'package:flutter/material.dart';

class MoviesSearch extends StatefulWidget {
  const MoviesSearch({super.key});

  @override
  State<MoviesSearch> createState() => _MoviesSearchState();
}

class _MoviesSearchState extends State<MoviesSearch> {
  Set<String> selectedCategories = <String>{};
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                _InputTextField(
                  hintText: 'キーワードを入力してください',
                  onSubmitted: (String? value) {
                    print(value);
                    return null;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _InputTextField extends StatelessWidget {
  const _InputTextField({
    required this.hintText,
    required this.onSubmitted,
  });

  final String hintText;
  final String? Function(String?)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 18),
          prefixIcon: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
        style: const TextStyle(fontSize: 22),
        onSubmitted: onSubmitted,
      ),
    );
  }
}
