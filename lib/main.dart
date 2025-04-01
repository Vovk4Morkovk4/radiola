import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '/home_screen.dart';

void main() {
  runApp(const MyApp());
  AudioLogger.logLevel = AudioLogLevel.info;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radiola',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
