import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() => runApp(const MyShopApp());

class MyShopApp extends StatelessWidget {
  const MyShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey.shade100,
        appBarTheme: const AppBarTheme(centerTitle: false),
      ),
      home: const HomePage(),
    );
  }
}
