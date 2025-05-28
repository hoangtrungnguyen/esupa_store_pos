import 'package:esupa_store_pos/app/view/pages/page_router.dart' as page_router;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go(page_router.Path.selling);
          },
          child: Text("Bắt đầu bán hàng"),
        ),
      ),
    );
  }
}
