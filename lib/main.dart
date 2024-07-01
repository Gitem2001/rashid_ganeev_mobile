
import 'package:flutter/material.dart';
import 'package:lab1_hope2/Functions/appin.dart';
import 'package:easy_localization/easy_localization.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ru')],
        path: 'assets/languages',
        fallbackLocale: Locale('en', 'ru'),
        child: MyApp()
    ),
  );
}

