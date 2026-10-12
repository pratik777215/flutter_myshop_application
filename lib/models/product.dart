import 'package:flutter/material.dart';

class Product {
  final String name;
  final String category;
  final String image;
  final double price;
  final double rating;
  final String description;
  final int? discount; // percentage, optional
  final bool isNew;

  const Product({
    required this.name,
    required this.category,
    required this.image,
    required this.price,
    required this.rating,
    required this.description,
    this.discount,
    this.isNew = false,
  });
}

class ShopCategory {
  final String name;
  final IconData icon;
  const ShopCategory(this.name, this.icon);
}

class BannerItem {
  final String image;
  final String title;
  final String subtitle;
  final String category;
  const BannerItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.category,
  });
}
