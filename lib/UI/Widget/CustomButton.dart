import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget nextPage;
  const CustomButton({super.key, required this.text, required this.icon, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          minimumSize: const Size(350,50),
          maximumSize: const Size(350,100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.black),
              softWrap: true,
            ),
          ),
          Icon(icon, color: Colors.black, size: 24),
        ],
      ),
    );
  }
}
