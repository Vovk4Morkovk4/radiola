import 'package:flutter/material.dart';
import 'package:radiola/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void playPause() async {
    if (isPlaying) {
      radiolaAudioHandler.pause();
      isPlaying = false;
    } else {
      radiolaAudioHandler.play();
      isPlaying = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: playPause,
                  child: Icon(
                    isPlaying ? Icons.pause_circle : Icons.play_circle,
                    color: Colors.black,
                    size: 100,
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
