import 'package:flutter/material.dart';
import 'package:pip_view_app/home_screen.dart';

class PipViewScreen extends StatefulWidget {
  const PipViewScreen({super.key});

  @override
  State<PipViewScreen> createState() => _PipViewScreenState();
}

class _PipViewScreenState extends State<PipViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Pip View',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: HomeScreen(),
    );
  }
}
