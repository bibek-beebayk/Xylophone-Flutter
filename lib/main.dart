import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded createButtons(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createButtons(Colors.red, 1),
              createButtons(Colors.orange, 2),
              createButtons(Colors.pinkAccent, 3),
              createButtons(Colors.deepOrangeAccent, 4),
              createButtons(Colors.green, 5),
              createButtons(Colors.teal, 6),
              createButtons(Colors.lightBlueAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
