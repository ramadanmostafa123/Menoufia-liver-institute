import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menofia_liver_institute/core/helpers/constants.dart';
import 'package:menofia_liver_institute/core/helpers/spacing.dart';
import 'package:menofia_liver_institute/core/theming/colors.dart';
import 'package:menofia_liver_institute/core/theming/text_style.dart';
import 'package:menofia_liver_institute/core/widgets/line.dart';

class VisionAndeMission extends StatelessWidget {
  const VisionAndeMission({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: ColorManager.darkBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 1),
                child: Text(
                  'Vision',
                  style: TextStyles.font16WhiteSemiBold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const Line(
                  width: 45,
                  color: ColorManager.whiteAppColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Text(
                  Constants.vision,
                  style: TextStyles.font16WhiteRegular.copyWith(fontSize: 14),
                  // textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
        verticalSpace(15),
        Container(
          width: double.infinity,
          color: ColorManager.darkBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 1),
                child: Text(
                  'Mission',
                  style: TextStyles.font16WhiteSemiBold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const Line(
                  width: 55,
                  color: ColorManager.whiteAppColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Text(
                  '${Constants.mission}\n\n ${Constants.mission}',
                  style: TextStyles.font16WhiteRegular.copyWith(fontSize: 14),
                  // textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
