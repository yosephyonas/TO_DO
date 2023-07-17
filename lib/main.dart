// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'logindart.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp();

  FlutterNativeSplash.remove();
  await Future.delayed(const Duration(seconds: 1));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "todo app",
      theme: ThemeData(
        primaryColor: Colors.greenAccent[700],
      ),
      home:  LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
