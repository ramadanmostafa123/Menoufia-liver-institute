import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:menofia_liver_institute/core/localization/components/demo_localization.dart';
import 'package:menofia_liver_institute/core/routing/app_router.dart';
import 'package:menofia_liver_institute/core/routing/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiverInstitute extends StatefulWidget {
  const LiverInstitute({Key? key}) : super(key: key);
  static void setLocale(BuildContext context, Locale locale) {
    _LiverInstituteState? state =
        context.findAncestorStateOfType<_LiverInstituteState>();
    state!.setLocale(locale);
  }

  @override
  State<LiverInstitute> createState() => _LiverInstituteState();

  ///
}

class _LiverInstituteState extends State<LiverInstitute> {
  Locale? _locale;

  // This widget is the root of your application.
  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: lightMode,
        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.generateRote,
        localizationsDelegates: const [
          DemoLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: _locale,
        supportedLocales: const [
          Locale("en", "US"),
          Locale("ar", "SA"),
        ],
        localeResolutionCallback: (currentLocale, supportedLocales) {
          if (currentLocale != null) {
            for (Locale locale in supportedLocales) {
              if (currentLocale.languageCode == locale.languageCode) {
                return currentLocale;
              }
            }
          }
          return supportedLocales.first;
        },
      ),
    );
  }
}
