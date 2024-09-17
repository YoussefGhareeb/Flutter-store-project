import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'home_screen.dart';

class CategoriesScreen extends StatelessWidget {
  final List<String> categories = [
    'smartphones',
    'laptops',
    'fragrances',
    'skincare',
    // أضف المزيد من الفئات هنا
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index]),
            onTap: () {
              // عند الضغط على فئة معينة، الانتقال إلى HomeScreen مع تمرير الفئة المحددة
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(category: categories[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
