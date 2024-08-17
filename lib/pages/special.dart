import 'package:flutter/material.dart';

class Special extends StatefulWidget {
  const Special({super.key});

  @override
  State<Special> createState() => _SpecialState();
}

class _SpecialState extends State<Special> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
    );
  }
}