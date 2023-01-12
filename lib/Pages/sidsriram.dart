import 'dart:ui';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class SidSriram extends StatefulWidget {
  const SidSriram({Key? key}) : super(key: key);

  @override
  State<SidSriram> createState() => _SidSriramState();
}

class _SidSriramState extends State<SidSriram> {
  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    try {
      assetsAudioPlayer.open(
        Audio.network(
            "https://stream-56.zeno.fm/mdyd8bvm7zquv?zs=Kp0t0CpzSMKFe8Fa3a0n2Q"),
      );
    } catch (t) {
      //mp3 unreachable
    }

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Stack(
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/sidsriram.jpg"),
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
                    "assets/sidsriram.jpg",
                    width: 250.0,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Sid Swag",
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
