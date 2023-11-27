import 'package:flutter/material.dart';

List<String> categories = ['SF', 'アクション', 'サスペンス', '公開順'];

class MoviesHeader extends StatefulWidget {
  const MoviesHeader({super.key});

  @override
  State<MoviesHeader> createState() => _MoviesHeaderState();
}

class _MoviesHeaderState extends State<MoviesHeader> {
  Set<String> selectedCategories = <String>{};
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.auto_awesome_outlined),
                  iconSize: 42,
                  onPressed: () async {
                    await showModalBottomSheet<bool>(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return const _ViewBottomSheet();
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              children: categories.map((String category) {
                return FilterChip(
                  label: Text(
                    category,
                    style: TextStyle(
                      color: selectedCategories.contains(category)
                          ? Colors.pink
                          : Colors.black,
                    ),
                  ),
                  showCheckmark: false,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: selectedCategories.contains(category)
                          ? Colors.pink
                          : Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.white,
                  selectedColor: Colors.pink.shade50,
                  selected: selectedCategories.contains(category),
                  onSelected: (bool selected) {
                    setState(() {
                      if (selected) {
                        selectedCategories.add(category);
                      } else {
                        selectedCategories.remove(category);
                      }
                    });
                  },
                );
              }).toList(),
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

class _ViewBottomSheet extends StatelessWidget {
  const _ViewBottomSheet();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.grid_3x3),
              title: const Text('グリッド表示に切り替え'),
              subtitle: const Text(
                '映画をグリッド表示します',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text('キャンセル'),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
