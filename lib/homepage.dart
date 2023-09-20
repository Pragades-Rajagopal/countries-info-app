import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('countries info'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.amber,
        elevation: 0.0,
        centerTitle: true,
      ),
    );
  }
}
