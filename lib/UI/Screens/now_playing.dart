import 'package:flutter/material.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Center(child: Text('Exercise 3 – Layout Basics: Column, Row, Padding, ListView')),
      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Center(child: const Text('Now Playing',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(left: 20.0),
                children: <Widget>[
                  customCard('A', 'Avatar', 'Sample description'),
                  customCard('I', 'Inception', 'Sample description'),
                  customCard('I', 'Interstellar', 'Sample description'),
                  customCard('J', 'Joker', 'Sample description'),
                ],
              ),
            )
          ],
        ),
    );
  }
  Widget customCard(String letter, String title, String description) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
        child: ListTile(
          leading: CircleAvatar(
            child: Text(
              letter,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ),
      );
  }
}
