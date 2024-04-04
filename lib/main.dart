import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:curriculo/pages/page_curriculum.dart';
import 'package:curriculo/pages/page_home.dart';
import 'package:i18n_extension/i18n_extension.dart';
/*
https://www.youtube.com/watch?app=desktop&v=7ut5YxIfEzI
http://www.coderzheaven.com/2019/04/26/tabbedappbar-in-flutter-android-and-ios/

 */

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {




    return AdaptiveTheme(
      light: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      dark: ThemeData.dark(
        useMaterial3: true,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Raul Zanardo',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('pt', "BR"),
          Locale('en', "US"),
        ],
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ),
        themeMode: ThemeMode.dark,
        home: I18n(
          child: const PageCurriculum(),
        ),
      ),
    );
  }
}
