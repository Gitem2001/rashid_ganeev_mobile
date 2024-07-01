import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lab1_hope2/UI/homepage.dart';
import 'package:lab1_hope2/generated/locale_keys.g.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ganeev_app_example',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: MyHomePage(title: LocaleKeys.title_page.tr()),
    );
  }
}