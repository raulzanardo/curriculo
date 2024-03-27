import 'package:curriculo/pages/page_curriculum.dart';
import 'package:curriculo/pages/page_home.dart';
import 'package:flutter/material.dart';

/*
https://www.youtube.com/watch?app=desktop&v=7ut5YxIfEzI
http://www.coderzheaven.com/2019/04/26/tabbedappbar-in-flutter-android-and-ios/

 */


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raul Zanardo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const PageCurriculum(),
    );
  }
}
