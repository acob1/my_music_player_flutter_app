import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MySongsPlayer extends StatefulWidget {
  const MySongsPlayer({super.key});

  @override
  State<MySongsPlayer> createState() => _MySongsPlayerState();
}

class _MySongsPlayerState extends State<MySongsPlayer> {
  final audioplayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    audioplayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioplayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioplayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    audioplayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D',
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'The Flutter Song',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Sweartagawd',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Slider(
              min: 0,
              max: duration.inSeconds.toDouble(),
              value: position.inSeconds.toDouble(),
              onChanged: (value) async {
                final position = Duration(seconds: value.toInt());
                await audioplayer.seek(position);
                await audioplayer.resume();
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0:1'),
                  Text('2:1'),
                ],
              ),
            ),
            CircleAvatar(
              radius: 35,
              child: IconButton(
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                iconSize: 50,
                onPressed: () async {
                  if (isPlaying) {
                    await audioplayer.pause();
                    setState(() {
                      isPlaying = false;
                    });
                  } else {
                    // Use the AudioCache class to play audio from your assets
                    final player = AudioCache(prefix: 'assets/sounds/');
                    // This assumes your file is named song.mp3 and stored in assets/audio/
                    final url = await player.load('maroon_5.mp3');
                    await audioplayer.setSourceUrl(url.path);
                    await audioplayer
                        .resume(); // Use resume to play from the current position
                    setState(() {
                      isPlaying = true;
                    });
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class MyWidget extends StatefulWidget {
//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   final AudioPlayer audioPlayer = AudioPlayer();
//   bool isPlaying = false;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
//       iconSize: 50,
//       onPressed: () async {
//         if (isPlaying) {
//           await audioPlayer.pause();
//           setState(() {
//             isPlaying = false;
//           });
//         } else {
//           // Use the AudioCache class to play audio from your assets
//           final player = AudioCache(prefix: 'assets/sounds/');
//           // This assumes your file is named song.mp3 and stored in assets/audio/
//           final url = await player.load('maroon_5.mp3');
//           await audioPlayer.setSourceUrl(url.path);
//           await audioPlayer
//               .resume(); // Use resume to play from the current position
//           setState(() {
//             isPlaying = true;
//           });
//         }
//       },
//     );
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose(); // Don't forget to dispose of the player
//     super.dispose();
//   }
// }


