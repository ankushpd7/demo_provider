import 'package:demo_provider/core/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final List<Map<String, dynamic>>? products;

  ProductScreen({this.products});

  final List<Map<String, dynamic>> allProducts = [
    {
      'name': 'Product 1',
      'image': 'https://via.placeholder.com/150',
      'price': 29.99,
      'details': 'Details about Product 1'
    },
    {
      'name': 'Product 2',
      'image': 'https://via.placeholder.com/150',
      'price': 19.99,
      'details': 'Details about Product 2'
    },
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    final displayProducts = products ?? allProducts;

    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: ListView.builder(
        itemCount: displayProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(displayProducts[index]['image']),
            title: Text(displayProducts[index]['name']),
            subtitle: Text('\$${displayProducts[index]['price']}'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: displayProducts[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
