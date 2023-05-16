import 'package:flutter/material.dart';

class TypeWritterText extends StatefulWidget {
  const TypeWritterText({Key? key}) : super(key: key);
  @override
  State<TypeWritterText> createState() => _TypeWritterTextState();
}

class _TypeWritterTextState extends State<TypeWritterText> {
  int _currentIndex = 0;
  int _currentCharIndex = 0;
  final List<String> _strings = [
    "Welcome to ProtoCodersPoint.com",
    "Get Programming Solution Here",
    "And more...",
  ];
  void _typeWrittingAnimation() {
    if (_currentCharIndex < _strings[_currentIndex].length) {
      _currentCharIndex++;
    } else {
      _currentIndex = (_currentIndex + 1) % _strings.length;
      _currentCharIndex = 0;
    }
    setState(() {});
    Future.delayed(const Duration(milliseconds: 50), () {
      _typeWrittingAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Proto Coders Point"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                _strings[_currentIndex].substring(0, _currentCharIndex),
                style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _typeWrittingAnimation,
          child: const Icon(Icons.play_arrow),
        ));
  }
}
