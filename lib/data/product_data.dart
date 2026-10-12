import 'package:flutter/material.dart';
import '../models/product.dart';

// Placeholder images (allowed by the assignment). To use local images,
// put files in assets/images/ and replace these URLs with asset paths.
String _img(String seed) => 'https://picsum.photos/seed/$seed/500/500';

const List<ShopCategory> categories = [
  ShopCategory('Electronics', Icons.devices),
  ShopCategory('Fashion', Icons.checkroom),
  ShopCategory('Shoes', Icons.directions_walk),
  ShopCategory('Beauty', Icons.face_retouching_natural),
  ShopCategory('Accessories', Icons.watch),
  ShopCategory('Home', Icons.chair),
];

const List<BannerItem> banners = [
  BannerItem(
    image: 'https://wallpaperswide.com/download/aesthetic_summer_vibes-wallpaper-1600x900.jpg',
    title: 'Summer Sale',
    subtitle: 'Up to 50% off on fashion',
    category: 'Fashion',
  ),
  BannerItem(
    image: 'https://cdn.content.tuigroup.com/adamtui/2025_2/18_14/b95791a0-039b-413d-8c24-b28800f628e7/ACC_947096_000800_1_FC.jpg?i10c=img.resize(width:900);img.crop(width:900,height:400)',
    title: 'New Arrivals',
    subtitle: 'Fresh kicks just landed',
    category: 'Shoes',
  ),
  BannerItem(
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZcac3qBLrhqKkgIWrMXUajmFAru8j_MJDD9z8CmhtQwFE2cSStBrnN_0&s=10',
    title: 'Electronics Discount',
    subtitle: 'Best gadgets, best prices',
    category: 'Electronics',
  ),
];

final List<Product> products = [
  Product(
    name: 'iPhone 15',
    category: 'Electronics',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQF353i7_UCHyuZuX-Cm9QJoOYhi4f7My_PS-lbnhvP1Rwchh4NLeOZx6U&s=10',
    price: 129000,
    rating: 4.8,
    description:
    'Latest smartphone with a stunning display, powerful chip and an excellent camera system.',
    isNew: true,
  ),
  Product(
    name: 'Gaming Laptop',
    category: 'Electronics',
    image: 'https://mudita.com.np/media/catalog/product/cache/5f4a658faeee583187031a67361d4d52/r/o/rog-strix-g16-price-in-nepal.webp',
    price: 155000,
    rating: 4.6,
    description:
    'High-performance laptop with a dedicated graphics card, 16GB RAM and a fast SSD.',
    discount: 10,
  ),
  Product(
    name: 'Wireless Headphones',
    category: 'Electronics',
    image: 'https://media.itechstore.com.np/f_webp/img/product/variants/b05d7e0d-66f1-42c3-a9e0-fdcf2470f5a0/01-ls_jbl_tune_730bt__black.png',
    price: 3500,
    rating: 4.5,
    description:
    'Wireless headphones with high-quality sound, noise reduction and 30-hour battery life.',
    discount: 20,
  ),
  Product(
    name: 'Cotton T-Shirt',
    category: 'Fashion',
    image: 'https://cdn.yourdesignstore.in/uploads/yds/productImages/full/178246234672725f90b0b3-a1c8-4b05-9871-a7e9c9d9c45d.jpg',
    price: 899,
    rating: 4.2,
    description: 'Soft, breathable 100% cotton t-shirt available in many colours.',
    isNew: true,
  ),
  Product(
    name: 'Denim Jacket',
    category: 'Fashion',
    image: 'https://static-01.daraz.com.np/p/b529f8f3c054a907861cc90303874ec1.jpg',
    price: 3200,
    rating: 4.4,
    description: 'Classic denim jacket with a modern fit. Perfect for every season.',
    discount: 15,
  ),
  Product(
    name: 'Running Sneakers',
    category: 'Shoes',
    image: 'https://image-cdn.ubuy.com/500_500_100/66c984b63a1acf412128ec91-damyuan-running-shoes-men-fashion.jpg',
    price: 4500,
    rating: 4.7,
    description: 'Lightweight running sneakers with a cushioned sole and breathable mesh.',
    isNew: true,
  ),
  Product(
    name: 'Leather Boots',
    category: 'Shoes',
    image: 'https://img.drz.lazcdn.com/static/np/p/e290afd42e4b41505004428264e71a71.jpg_720x720q80.jpg',
    price: 6200,
    rating: 4.3,
    description: 'Durable genuine-leather boots built for style and comfort.',
    discount: 25,
  ),
  Product(
    name: 'Face Cream',
    category: 'Beauty',
    image: 'https://www.evolvebeauty.com/cdn/shop/files/evolve-organic-beauty-moisturizer-daily-renew-facial-cream-1153161845.jpg?v=1768017550',
    price: 1200,
    rating: 4.1,
    description: 'Hydrating daily face cream with natural ingredients for all skin types.',
  ),
  Product(
    name: 'Lipstick Set',
    category: 'Beauty',
    image: 'https://img.drz.lazcdn.com/static/np/p/d32e01308ad8bb105817c20c533e4298.jpg_720x720q80.jpg',
    price: 1800,
    rating: 4.5,
    description: 'Set of 4 long-lasting matte lipsticks in trending shades.',
    isNew: true,
  ),
  Product(
    name: 'Smart Watch',
    category: 'Accessories',
    image: 'https://i5.walmartimages.com/seo/Kogiio-Smart-Watch-Fitness-Tracker-2-01-Black-Case-with-Black-Band-1-Count-1-Pack_d94ed35a-84ea-4b4c-b28a-a9215086a266.747f659b406adbc741e29a4d1fb13128.jpeg',
    price: 8900,
    rating: 4.6,
    description: 'Track your fitness, heart rate and notifications right from your wrist.',
    discount: 12,
  ),
  Product(
    name: 'Sunglasses',
    category: 'Accessories',
    image: 'https://img.drz.lazcdn.com/static/np/p/85517997fe5755d1327d1d953697685f.jpg_720x720q80.jpg',
    price: 1500,
    rating: 4.0,
    description: 'UV-protected stylish sunglasses with a lightweight frame.',
  ),
  Product(
    name: 'Table Lamp',
    category: 'Home',
    image: 'https://m.media-amazon.com/images/I/71DYaezmEcL._AC_SX569_.jpg',
    price: 2100,
    rating: 4.4,
    description: 'Modern LED table lamp with adjustable brightness for your desk or bedside.',
    isNew: true,
  ),
  Product(
    name: 'Backpack',
    category: 'Accessories',
    image: 'https://img.drz.lazcdn.com/g/kf/S6d9101e7662a47c1b3f349a50a248385j.jpg_720x720q80.jpg',
    price: 2600,
    rating: 4.5,
    description: 'Spacious water-resistant backpack with a padded laptop compartment.',
  ),
  Product(
    name: 'Cushion Set',
    category: 'Home',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwjzADRGFsWXCPgnIoiiGKXyFJnsDrf0sVsEttU7scZS0AYRyef7MQAXw&s=10',
    price: 1400,
    rating: 4.2,
    description: 'Set of 3 soft decorative cushions to brighten up your living room.',
    discount: 30,
  ),
];
