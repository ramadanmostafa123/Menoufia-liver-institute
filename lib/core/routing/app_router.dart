import 'package:flutter/material.dart';
import 'package:menofia_liver_institute/core/localization/language_settings/settings.dart';
import 'package:menofia_liver_institute/core/routing/routes.dart';
import 'package:menofia_liver_institute/features/home/data/model/adminstration.dart';
import 'package:menofia_liver_institute/features/home/ui/home.dart';
import 'package:menofia_liver_institute/features/home/widgets/adminstarion/adminstartion.dart';
import 'package:menofia_liver_institute/features/home/widgets/adminstarion/member_details_page.dart';

class AppRouter {
  Route generateRote(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      case Routes.settings:
        return MaterialPageRoute(
          builder: (_) => const Settings(),
        );

      case Routes.memberDetailsPage:
        final member = argument as AdminstrationModel;
        return MaterialPageRoute(
          builder: (_) =>  MemberDetailsPage(member: member),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No Routes define for ${settings.name}')),
          ),
        );
    }
  }
}
