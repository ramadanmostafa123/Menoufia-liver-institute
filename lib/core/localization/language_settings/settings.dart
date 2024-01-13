// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:menofia_liver_institute/core/theming/colors.dart';
import 'package:menofia_liver_institute/core/localization/logic/setting_controller.dart';
import 'package:menofia_liver_institute/core/localization/components/language_constants.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

//var settingsController = TextEditingController();
class _SettingsState extends State<Settings> {
  SettingsController settingsController = SettingsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
          horizontalTitleGap: 5,
          leading: Icon(
            Icons.language_outlined,
            size: 25,
          ),
          // leading: Image.network(
          //   "https://img.freepik.com/free-vector/speech-bubble-composition-with-flags_23-2147885793.jpg?w=740",
          //   width: 23,
          //   height: 23,
          // ),
          title: Text(getTranslated(context, "lng")!,
              style: const TextStyle(
                  fontSize: 20,
                  color: ColorManager.hint,
                  fontWeight: FontWeight.w600)),
          // ignore: avoid_returning_null_for_void
          onTap: () {
            settingsController.showAlertDialog(
                context: context,
                setStater: () {
                  setState(() {});
                });
          }),
    );
  }
}
