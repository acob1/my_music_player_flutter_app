import 'package:flutter/material.dart';
import 'package:flutter_form_app/myplay_audio.dart';
import 'package:flutter_form_app/theme/app_theme.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.theme,
        home: const MySongsPlayer()
        //  MySlider(),
        );
  }
}
