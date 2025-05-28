import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: Row(
        children: [
          BackButton(
            onPressed: () {
              context.go("/home");
            },
          ),
          SizedBox(width: 8),
          Icon(Icons.point_of_sale, color: Colors.indigo, size: 30),
          SizedBox(width: 8),
          Text(
            'POS System',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings, color: Colors.grey),
          onPressed: () {
            // Handle settings
          },
        ),
        const SizedBox(width: 16),
        Row(
          children: [
            const Text(
              'Cashier',
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            IconButton(
              icon: const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              onPressed: () {
                // Handle cashier dropdown
              },
            ),
          ],
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
