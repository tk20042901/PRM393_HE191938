import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}
enum Genre{action, comedy}
class _InputScreenState extends State<InputScreen> {
  double rating = 50;
  var isActive = false;
  Genre? genre;
  DateTime? selectedDate;
  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2026, 7, 25),
      firstDate: DateTime(2026),
      lastDate: DateTime(2027),
    );
    setState(() {
      selectedDate = pickedDate;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Center(child: Text('Exercise 2 – Input Widgets')),
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const Text('Rating (Slider)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Slider(value: rating,min: 0,max: 100, onChanged: (val){
              setState(() {
                rating = val;
              });
            }),
            Text('Current value: ${rating.round()}'),
            const SizedBox(height: 12),
            const Text('Active (Switch)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Is movie Active?'),
                  Switch(value: isActive, onChanged: (value)=>{
                    setState(() {
                      isActive = value;
                    })
                  })
                ],
              ),
            ),
            const Text('Genre (RadioListTile)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            RadioGroup<Genre>(
              groupValue: genre,
              onChanged: (value){
                setState(() {
                  genre = value;
                });
              },
              child: const Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Action'),
                    leading: Radio<Genre>(value: Genre.action),
                  ),
                  ListTile(
                    title: Text('Comedy'),
                    leading: Radio<Genre>(value: Genre.comedy),
                  ),
                ],
              ),
            ),
            Text('Selected genre: ${genre == null ? 'None': genre?.name}'),
            const SizedBox(height: 6),
            Center(
              child: OutlinedButton(
                onPressed: _selectDate,
                child: const Text('Open Date Picker'),
              ),
            )
          ]
        )
      ),
    );
  }
}
