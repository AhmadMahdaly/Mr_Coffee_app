import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mr_coffee/core/app/env_variables.dart';
import 'package:mr_coffee/mr_coffee_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  //
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyAVlPfVXzdGgUL44kMbUVOC-1K1jCDsrUQ',
            appId: '1:57181686346:android:037a36f79eec5f17a274b3',
            messagingSenderId: '57181686346',
            projectId: 'mr-coffee-84744',
          ),
        )
      : await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then((_) {
    runApp(
      const MrCoffeeApp(),
    );
  });
}
