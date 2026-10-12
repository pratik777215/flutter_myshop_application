import 'package:flutter/material.dart';
import '../data/product_data.dart';
import '../widgets/product_card.dart';

class CategoryPage extends StatelessWidget {
  final String categoryName;
  const CategoryPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {

    final filtered = categoryName == 'All'
        ? products
        : products.where((p) => p.category == categoryName).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: filtered.isEmpty
          ? const Center(child: Text('No products in this category yet'))
          : GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: filtered.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.64,
        ),
        itemBuilder: (context, index) => ProductCard(product: filtered[index]),
      ),
    );
  }
}
