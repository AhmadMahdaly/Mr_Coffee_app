import 'package:flutter/material.dart';
import 'package:mr_coffee/core/app/env_variables.dart';

class MrCoffeeApp extends StatelessWidget {
  const MrCoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
      title: 'MR COFFEE',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MR COFFEE',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
