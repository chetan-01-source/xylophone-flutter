import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextButton(
              onPressed: () {
                AssetsAudioPlayer.newPlayer().open(
                  Audio("assets/note1.wav"),
                  showNotification: true,
                  autoStart: true,
                );
              },
              child: Container(
                color: Colors.red,
              ),
          ),
        ],
      ),
    );
  }
}
