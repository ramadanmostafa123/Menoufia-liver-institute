import 'package:flutter/material.dart';
import 'package:menofia_liver_institute/core/helpers/spacing.dart';
import 'package:menofia_liver_institute/core/routing/routes.dart';
import 'package:menofia_liver_institute/core/theming/text_style.dart';
import 'package:menofia_liver_institute/core/widgets/line.dart';
import 'package:menofia_liver_institute/features/home/widgets/about_institute.dart';
import 'package:menofia_liver_institute/features/home/widgets/adminstarion/adminstartion.dart';
import 'package:menofia_liver_institute/features/home/widgets/drawer.dart';
import 'package:menofia_liver_institute/features/home/widgets/home_programs.dart';
import 'package:menofia_liver_institute/features/home/widgets/home_slider.dart';
import 'package:menofia_liver_institute/features/home/widgets/vision_and_mossion.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.settings,
              ),
            ),
            onTap: () => Navigator.pushNamed(
              context,
              Routes.settings,
            ),
          ),
        ],
        title: const Text('Menofia Liver Institute'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeSlider(),
            verticalSpace(10),
            Text(
              'Our Programs',
              style: TextStyles.font23BlackBold,
            ),
            const Line(
              width: 80,
            ),
            verticalSpace(10),
            const HomePrograms(),
            verticalSpace(10),
            verticalSpace(10),
            const AboutInstitute(),
            verticalSpace(10),
            Text(
              'Adminstration',
              style: TextStyles.font23BlackBold,
            ),
            const Line(
              width: 80,
            ),
            verticalSpace(10),
            const Adminstration(),
            const VisionAndeMission(),
          ],
        ),
      ),
    );
  }
}
