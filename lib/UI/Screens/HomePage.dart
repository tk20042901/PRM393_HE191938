import 'package:flutter/material.dart';
import 'package:prm393/UI/Screens/app_structure.dart';
import 'package:prm393/UI/Screens/common_ui.dart';
import 'package:prm393/UI/Screens/input_screen.dart';
import 'package:prm393/UI/Screens/now_playing.dart';
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
        actions: [],
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
            CustomButton(
              text: 'Exercise 2 – Input Widgets: Demo',
              icon: Icons.chevron_right,
              nextPage: const InputScreen(),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Exercise 3 – Layout Basics: Demo',
              icon: Icons.chevron_right,
              nextPage: const NowPlaying(),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Exercise 4 – App Structure: Demo',
              icon: Icons.chevron_right,
              nextPage: const AppStructure(),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Exercise 5 – Common UI: Demo',
              icon: Icons.chevron_right,
              nextPage: const CommonUI(),
            ),
          ],
        ),
      ),
    );
  }
}

