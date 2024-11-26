import 'package:flutter/material.dart';

class MrCoffeeApp extends StatelessWidget {
  const MrCoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MR COFFEE',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MR COFFEE',
          ),
        ),
      ),
    );
  }
}
