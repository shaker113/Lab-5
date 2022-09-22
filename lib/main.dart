import 'package:flutter/material.dart';
import 'package:myapp/screens/homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: myapp(),
    ),
  );
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return homescreen();
  }
}
