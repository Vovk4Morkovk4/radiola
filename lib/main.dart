import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:radiola/radiola_audio_handler.dart';

import '/home_screen.dart';

late AudioHandler radiolaAudioHandler;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  radiolaAudioHandler = await AudioService.init(
    builder: () => RadiolaAudioHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'ru.vovkamorkovka.radiola.channel.audio',
      androidNotificationChannelName: 'Online Radio',
      androidNotificationOngoing: true,
      androidStopForegroundOnPause: true,
    ),
  );
  AudioLogger.logLevel = AudioLogLevel.info;
  runApp(const MyApp());
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
