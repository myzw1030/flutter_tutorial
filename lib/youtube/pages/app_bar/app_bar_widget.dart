import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade900,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Image.asset(
            'assets/youtube_logo.png',
            width: 35,
          ),
          const SizedBox(width: 4),
          const Text(
            'YouTube',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.cast_connected,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.notifications,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.search,
            size: 30,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            minimumSize: const Size(
              20,
              20,
            ),
            backgroundColor: Colors.purple.shade400,
          ),
          onPressed: () {},
          child: const Text(
            't',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
