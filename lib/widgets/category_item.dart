import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/category_page.dart';


class CategoryItem extends StatelessWidget {
  final ShopCategory category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(categoryName: category.name),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: color.primaryContainer,
              child: Icon(category.icon, size: 28, color: color.onPrimaryContainer),
            ),
            const SizedBox(height: 6),
            Text(category.name, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
