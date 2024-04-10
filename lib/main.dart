import 'package:curriculo/pages/sub_page/page_porfolio_copal.dart';
import 'package:curriculo/providers/provider_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:provider/provider.dart';
import 'package:curriculo/pages/page_home.dart';

import 'package:curriculo/providers/provider_theme.dart';

/*
https://www.youtube.com/watch?app=desktop&v=7ut5YxIfEzI
http://www.coderzheaven.com/2019/04/26/tabbedappbar-in-flutter-android-and-ios/
https://itnext.io/an-easy-way-to-switch-between-dark-and-light-theme-in-flutter-fb971155eefe
https://betterprogramming.pub/how-to-create-a-dynamic-theme-in-flutter-using-provider-e6ad1f023899
 */

//TODO popular localizations
//TODO popular paginas de portifolio
//

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(dark),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

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
      theme: themeNotifier.getTheme(),

      themeMode: ThemeMode.system,
      home: I18n(
        initialLocale: const Locale('pt', 'BR'),
        //initialLocale: const Locale('en', 'US'),
        child: const PageHome(),
      ),
    );
  }
}
