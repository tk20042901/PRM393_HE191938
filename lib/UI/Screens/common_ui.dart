import 'package:flutter/material.dart';

class CommonUI extends StatelessWidget {
  const CommonUI({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> movies = [
      'Movie A',
      'Movie B',
      'Movie C',
      'Movie D',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: const Text('Exercise 5 – Common UI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Correct ListView inside Column using Expanded',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(
                    Icons.movie_creation,
                    color: Colors.grey,
                    size: 36,
                  ),
                  title: Text(
                    movies[index],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
