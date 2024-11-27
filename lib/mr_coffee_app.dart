import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mr_coffee/core/app/env_variables.dart';

class MrCoffeeApp extends StatefulWidget {
  const MrCoffeeApp({super.key});

  @override
  State<MrCoffeeApp> createState() => _MrCoffeeAppState();
}

class _MrCoffeeAppState extends State<MrCoffeeApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  Future<void> initialization() async {
    // ignore: inference_failure_on_instance_creation
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );

    FlutterNativeSplash.remove();
  }

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
