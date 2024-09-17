import 'package:final_project/profile_screen.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'CategoriesScreen.dart';
import 'ProfileScreen.dart';
import 'DevelopersScreen.dart';
import 'categories_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(), // الصفحة الرئيسية تعرض كل المنتجات
    CategoriesScreen(), // صفحة الفئات تعرض الفئات المتاحة
    ProfileScreen(), // صفحة الملف الشخصي
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Naila Stefenson',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'UX/UI Engineer',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Developers'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DevelopersScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
