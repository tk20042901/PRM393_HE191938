import 'package:flutter/material.dart';
import 'package:prm393/UI/Widget/CustomButton.dart';
import 'core_widgets_demo.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: const Icon(Icons.menu),
        title: const Center(child: Text('Home page')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Exercise 1 – Core Widgets: Demo',
              icon: Icons.chevron_right,
              nextPage: const PageOne(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
