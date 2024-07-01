// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "photo_note": "Загрузить фото",
  "first_name_note": "Имя",
  "description_enter_forms": "Введите имя и фамилию, а также установите фото",
  "description_bio": "Расскажите о себе для Ваших будущих друзей",
  "last_name_note": "Фамилия",
  "bio_note": "Описание",
  "title_page": "Регистрация"
};
static const Map<String,dynamic> en = {
  "photo_note": "Set new photo",
  "first_name_note": "First name",
  "description_enter_forms": "Enter your name and add an optional profile photo",
  "description_bio": "Add a few lines about yourself for future friends",
  "last_name_note": "Last name",
  "bio_note": "Bio",
  "title_page": "Registration"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "en": en};
}
