//import '../utils/sharedPreferenceClass.dart';
// ignore_for_file: no_leading_underscores_for_local_identifiers, constant_identifier_names

import 'package:menofia_liver_institute/core/localization/components/demo_localization.dart';

//import 'demo_localization.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

//languages code
const String ENGLISH = 'en';

const String ARABIC = 'ar';
const String LAGUAGE_CODE = 'languageCode';

Future<Locale> setLocale(String languageCode) async {
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, 'US');

    case ARABIC:
      return const Locale(ARABIC, "SA");

    default:
      return const Locale(ENGLISH, 'US');
  }
}

String? getTranslated(BuildContext context, String key) {
  return DemoLocalization.of(context)!.translate(key);
}


String? selectedlang;

class Constants {
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'lang': selectedlang!
  };
}