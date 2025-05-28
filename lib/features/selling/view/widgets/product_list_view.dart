import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/product.dart' show Product;
import '../../view/bloc/bloc.dart';
import 'category_tabs.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductSearchBloc, ProductSearchState>(
      builder: (context, state) {
        String currentCategory = 'All Items';
        String searchTerm = '';
        List<Product> filteredProducts = [];
        bool isLoading = false;

        // Using pattern matching to extract state data
        switch (state) {
          case InitialProductSearchState():
            currentCategory = 'All Items';
            filteredProducts = []; // Or initial products if desired
          case LoadingProductSearchState():
            isLoading = true;
            // Retain previous state data while loading if available
            if (context.read<ProductSearchBloc>().state
                is LoadedProductSearchState) {
              final loadedState =
                  context.read<ProductSearchBloc>().state
                      as LoadedProductSearchState;
              currentCategory = loadedState.currentCategory;
              searchTerm = loadedState.searchTerm;
              filteredProducts = loadedState.filteredProducts;
            }
          case LoadedProductSearchState(
            allProducts: _,
            filteredProducts: final products,
            searchTerm: final term,
            currentCategory: final category,
          ):
            currentCategory = category;
            searchTerm = term;
            filteredProducts = products;
          case ErrorProductSearchState():
            currentCategory = 'All Items'; // Reset on error
            filteredProducts = [];
        }
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Q Search products...',
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                ),
                onChanged: (newSearchTerm) {
                  context.read<ProductSearchBloc>().add(
                    ProductSearchEvent.searchProducts(
                      newSearchTerm,
                      category: currentCategory,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CategoryTabs(
                selectedCategory: currentCategory,
                onCategorySelected: (category) {
                  context.read<ProductSearchBloc>().add(
                    ProductSearchEvent.searchProducts(
                      searchTerm,
                      category: category,
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child:
                  isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : filteredProducts.isEmpty
                      ? const Center(
                        child: Text(
                          'No products found.',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      )
                      : GridView.builder(
                        padding: const EdgeInsets.all(16.0),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 250, // Max width of each item
                              childAspectRatio:
                                  3 / 2, // Aspect ratio of each item
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                            ),
                        itemCount: filteredProducts.length,
                        itemBuilder: (context, index) {
                          final product = filteredProducts[index];
                          return ProductCard(product: product);
                        },
                      ),
            ),
          ],
        );
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          context.read<CurrentOrderBloc>().add(
            CurrentOrderEvent.addItem(product),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        product.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) => const Icon(
                              Icons.fastfood, // Fallback icon
                              color: Colors.indigo,
                              size: 30,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          product.description,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 13,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
