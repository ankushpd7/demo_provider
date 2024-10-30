import 'package:demo_provider/screens/product_screen.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Electronics', 'products': [
      {'name': 'Phone', 'image': 'https://via.placeholder.com/150', 'price': 699.99, 'details': 'Latest model phone'},
      {'name': 'Laptop', 'image': 'https://via.placeholder.com/150', 'price': 999.99, 'details': 'High performance laptop'},
    ]},
    {'name': 'Fashion', 'products': [
      {'name': 'T-Shirt', 'image': 'https://via.placeholder.com/150', 'price': 19.99, 'details': 'Comfortable cotton t-shirt'},
      {'name': 'Jeans', 'image': 'https://via.placeholder.com/150', 'price': 49.99, 'details': 'Stylish denim jeans'},
    ]},
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index]['name']),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductScreen(products: categories[index]['products']),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
