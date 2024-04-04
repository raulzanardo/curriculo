import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_extension.dart';

import 'package:curriculo/pages/page_curriculum.dart';
import 'package:curriculo/pages/page_home.dart';

import 'package:curriculo/providers/provider_theme.dart';

/*
https://www.youtube.com/watch?app=desktop&v=7ut5YxIfEzI
http://www.coderzheaven.com/2019/04/26/tabbedappbar-in-flutter-android-and-ios/
https://itnext.io/an-easy-way-to-switch-between-dark-and-light-theme-in-flutter-fb971155eefe
 */

//TODO Criar localization do CV

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
    return MaterialApp(
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
        initialLocale: const Locale('pt', 'BR'),
        child: const PageHome(),
      ),
    );
  }
}
