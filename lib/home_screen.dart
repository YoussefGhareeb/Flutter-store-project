import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'ProductDetailsScreen.dart';

class HomeScreen extends StatefulWidget {
  final String? category;

  HomeScreen({this.category});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Dio dio = Dio();
  List products = [];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {

      String url = widget.category != null
          ? 'https://dummyjson.com/products/category/${widget.category}'
          : 'https://dummyjson.com/products/category/smartphones';

      var response = await dio.get(url);
      setState(() {
        products = response.data['products'];
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category != null ? 'Products - ${widget.category}' : 'All Products'),
      ),
      body: products.isEmpty
          ? const Center(child: CircularProgressIndicator()) // مؤقت التحميل أثناء جلب البيانات
          : ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]['title']),
            subtitle: Text('Price: \$${products[index]['price']}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
