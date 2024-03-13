import 'package:flutter/material.dart';

class MyPlaying extends StatelessWidget {
  final bool isPlaying;
  void Function()? onTap;
  MyPlaying({
    Key? key,
    required this.isPlaying,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isPlaying ? Icons.volume_up : Icons.volume_off,
        color: Colors.blue,
        size: 50,
      ),
    );
  }
}
