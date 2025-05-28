import 'package:esupa_store_pos/features/selling/view/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/domain.dart';
import '../widgets/cart_view.dart';
import '../widgets/header_bar.dart';
import '../widgets/product_list_view.dart';

class SellingPage extends StatelessWidget {
  const SellingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) => SellingBloc.initial(
                user: User(id: "1", name: "ad", role: 'ad'),
                session: Session(id: "3", startTime: DateTime.now()),
              ),
        ),
        BlocProvider(
          create: (_) {
            return ProductSearchBloc();
          },
        ),

        BlocProvider<CurrentOrderBloc>(create: (context) => CurrentOrderBloc()),
      ],
      child: CartPageView(),
    );
  }
}

class CartPageView extends StatelessWidget {
  const CartPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Determine if we are in a wide layout (desktop/tablet) or narrow (mobile-like)
          final bool isWideScreen = constraints.maxWidth > 800;

          return Row(
            children: [
              // Left Panel: Product Search and List
              Expanded(
                flex: isWideScreen ? 3 : 1, // Give more space on wide screens
                child: Container(
                  color: Colors.white,
                  child: const ProductListView(),
                ),
              ),
              // Right Panel: Current Order Cart
              Expanded(
                flex: isWideScreen ? 2 : 1, // Give less space on wide screens
                child: Container(
                  color: Colors.grey.shade100,
                  padding: const EdgeInsets.all(16.0),
                  child: const CartView(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
