import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Raheman extends StatefulWidget {
  const Raheman({Key? key}) : super(key: key);

  @override
  State<Raheman> createState() => _RahemanState();
}

class _RahemanState extends State<Raheman> {
  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    try {
      assetsAudioPlayer.open(
        Audio.network(
            "https://stream-60.zeno.fm/3z615n343d0uv?zs=Oo3H4A3zRLq0yB-lqueEaQ"),
      );
    } catch (t) {
      //mp3 unreachable
    }
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/arraheman.jpeg"),
                fit: BoxFit.cover,
              )),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 28, sigmaY: 28),
                  child: Container(
                    color: Colors.black54,
                  ))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/arraheman.jpeg",
                    width: 250.0,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Raheman",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    letterSpacing: 6,
                  )),
              SizedBox(
                height: 50.0,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () async {
                  assetsAudioPlayer.play();
                },
                child: Text('Play'),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  assetsAudioPlayer.pause();
                },
                child: Text('Pause'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              )
            ],
          )
        ],
      ),
    );
  }
}
