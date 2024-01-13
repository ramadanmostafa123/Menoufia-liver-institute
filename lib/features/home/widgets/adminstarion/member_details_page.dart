import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menofia_liver_institute/core/theming/text_style.dart';
import 'package:menofia_liver_institute/features/home/data/model/adminstration.dart';

class MemberDetailsPage extends StatelessWidget {
  final AdminstrationModel member;
  const MemberDetailsPage({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white.withOpacity(0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: const [0.18, 0.4],
                        ),
                      ),
                      child: Image.network(
                        member.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    //verticalSpace(10),
                    Positioned(
                      bottom: 30,
                      left: 0,
                      right: 0,
                      child: Text(
                        member.name,
                        style: TextStyles.font32BlueBold.copyWith(height: 1.4),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,
                      // fontFamily: 'Agne',
                    ),
                    child: AnimatedTextKit(
                      repeatForever: false,
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TypewriterAnimatedText(member.body),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
