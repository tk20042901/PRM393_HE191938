import 'package:flutter/material.dart';

class AppStructure extends StatefulWidget {
  const AppStructure({super.key});

  @override
  State<AppStructure> createState() => _AppStructureState();
}

class _AppStructureState extends State<AppStructure> {
  var isDark = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDark? ThemeData.dark(useMaterial3: true) : ThemeData.light(useMaterial3: true),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Center(
            child: Text(
              'Exercise 4 – App Structure with Scaffold, AppBar, FAB & Theme',
            ),
          ),
          actions: [
            Text('Dark'),
            Switch(
              value: isDark,
              onChanged: (value) {
                setState(() {
                  isDark = value;
                });
              },
            ),
          ],
        ),
        body: Expanded(
          child: Center(
            child: Text('This is a simple screen with theme toggle'),
          ),
        ),
      ),
    );
  }
}
