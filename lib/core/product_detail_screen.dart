import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product['name'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(product['image']),
            SizedBox(height: 16),
            Text(product['name'], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('\$${product['price']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            Text(product['details']),
          ],
        ),
      ),
    );
  }
}
