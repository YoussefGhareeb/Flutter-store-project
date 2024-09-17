import 'package:flutter/material.dart';

class DevelopersScreen extends StatelessWidget {
  final List<String> developers = [
    'Developer 1: Youssef Ghareeb',

  ];

  DevelopersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developers'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: developers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(developers[index]),
          );
        },
      ),
    );
  }
}
