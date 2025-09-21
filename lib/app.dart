import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'localization/localizations.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  title: 'SprintUp Shop',
  debugShowCheckedModeBanner: false,
  supportedLocales: [Locale('en'), Locale('ar')],
  localizationsDelegates: [SimpleLocalizationsDelegate()],
  home: WelcomeScreen(),
  theme: ThemeData(
  primarySwatch: Colors.deepPurple,
  fontFamily: 'Suwannaphum',
      ),
    );
  }
}