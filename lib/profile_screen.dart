import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcVPVUVIs3E8mVY7Yb9G7ZBLenIkWEhXX2zg&s', // رابط صورة المستخدم
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Youssef Ghareeb',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Flutter Engineer',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),


          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                ListTile(
                  leading: const Icon(Icons.person_outline, color: Colors.purple),
                  title: const Text('My Profile'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.email_outlined, color: Colors.purple),
                  title: const Text('Messages'),
                  trailing: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      '7',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.favorite_border, color: Colors.purple),
                  title: const Text('Favourites'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.location_on_outlined, color: Colors.purple),
                  title: const Text('Location'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings_outlined, color: Colors.purple),
                  title: const Text('Settings'),
                  onTap: () {},
                ),
              ],
            ),
          ),

          // زر تسجيل الخروج
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListTile(
              leading: const Icon(Icons.logout, color: Colors.purple),
              title: const Text('Logout'),
              onTap: () {
                // منطق تسجيل الخروج
              },
            ),
          ),
        ],
      ),
    );
  }
}
