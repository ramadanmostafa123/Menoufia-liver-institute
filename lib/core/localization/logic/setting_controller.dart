
// ignore_for_file: no_leading_underscores_for_local_identifiers, use_build_context_synchronously, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:menofia_liver_institute/core/shared_preference/shared_preference_class.dart';
import 'package:menofia_liver_institute/core/localization/components/language_constants.dart';
import 'package:menofia_liver_institute/liver_inistitute.dart';



class SettingsController {
  // method for choosing language
  showAlertDialog({BuildContext? context, Function? setStater}) {
    showDialog(
      context: context!,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(5.0),
        content: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              color: Colors.white,
              //Constants.whiteAppColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                      child: Text(
                    getTranslated(context, 'chnLng')!,
                    style: const TextStyle(fontSize: 22),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        getTranslated(context, 'eng')!,
                        style: const TextStyle(fontSize: 22),
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                            tristate: true,
                            activeColor: Colors.blue,
                            value: selectedlang != "ar" ? true : false,
                            shape: const CircleBorder(
                              side: BorderSide(
                                color: Colors.black,
                                //Constants.primaryAppColor,
                              ),
                            ),
                            onChanged: (value) async {
                              Locale _locale = await setLocale("en");
                              // ignore: use_build_context_synchronously
                              LiverInstitute.setLocale(context, _locale);
                              sharedPrefs.setLng("en");
                              Constants.headers = {
                                'Accept': 'application/json',
                                'lang': "en"
                              };
                              selectedlang = "en";
                              // ignore: use_build_context_synchronously
                              Navigator.pop(context);
                              setStater;
                            },),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        getTranslated(context, 'ar')!,
                        style: const TextStyle(fontSize: 22),
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                            value: selectedlang != "en" ? true : false,
                            activeColor: Colors.black,
                            shape: const CircleBorder(
                              side: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            onChanged: (value) async {
                              Locale _locale = await setLocale("ar");
                              LiverInstitute.setLocale(context, _locale);
                              sharedPrefs.setLng("ar");
                              Constants.headers = {
                                'Accept': 'application/json',
                                'lang': "ar"
                              };
                              selectedlang = "ar";
                              Navigator.pop(context);
                              setStater;
                            }),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
