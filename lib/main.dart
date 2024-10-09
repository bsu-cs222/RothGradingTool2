import 'package:flutter/material.dart';
import 'package:grading_tool/grading_tool.dart';

void main() {
  runApp(GradingApp());
}

class GradingApp extends StatelessWidget {
  const GradingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _textController = TextEditingController();

  final calculator = GradeTool();
  String _letterGrade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.all(85.0),
        child: TextField(
            controller: _textController,
            decoration: InputDecoration(
                hintText: 'Enter Score Here',
                border: OutlineInputBorder(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        _onPressed();
                      },
                      child: Text('Convert')),
                ))),
      ),
      Text(_letterGrade),
    ]));
  }

  void _onPressed() {
    setState(() {
      int numericalGrade = int.parse(_textController.text);
      String result = calculator.calculateLetterGrade(numericalGrade);
      _letterGrade = result;
    });
  }
}
