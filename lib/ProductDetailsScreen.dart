import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final dynamic product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product['title'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Price: \$${product['price']}'),
            const SizedBox(height: 10),
            Text('Description: ${product['description']}'),
            const SizedBox(height: 20),
            product['images'] != null && product['images'].isNotEmpty
                ? Image.network(product['images'][0])
                : Container(),
          ],
        ),
      ),
    );
  }
}
