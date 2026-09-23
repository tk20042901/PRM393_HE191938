import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('Exercise 1 – Core Widgets: Text, Image, Icon, Card, ListTitle'),
      ),
      body: Center(
        child:SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to Flutter UI',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 40),

                const Center(
                  child: Icon(
                    Icons.movie,
                    size: 80,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 40),
                Image.network(
                  'https://picsum.photos/600/300',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 40),
                Card(
                  elevation: 0,
                  color: const Color(0xFFF3F2F8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.grey, width: 1),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xFF555555),
                      size: 30,
                    ),
                    title: Text(
                      'Movie Item',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'This is a sample ListTile inside a Card.',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
