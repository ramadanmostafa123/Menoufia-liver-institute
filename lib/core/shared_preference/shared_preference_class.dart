// ignore_for_file: file_names
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? sharedPrefs;

  Future<void> init() async {
    sharedPrefs = await SharedPreferences.getInstance();
  }
  setLng(String value) {
    sharedPrefs!.setString(LAGUAGE_CODE, value);
  }
}

final sharedPrefs = SharedPrefs();


// ignore: constant_identifier_names
const String LAGUAGE_CODE = 'languageCode';
