import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menofia_liver_institute/core/helpers/spacing.dart';
import 'package:menofia_liver_institute/core/theming/colors.dart';
import 'package:menofia_liver_institute/core/theming/text_style.dart';
import 'package:menofia_liver_institute/core/widgets/line.dart';

class AboutInstitute extends StatelessWidget {
  const AboutInstitute({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorManager.darkBlue,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Institute',
              style: TextStyles.font24whiteBold,
              // textAlign: TextAlign.start,
            ),
            const Line(
              width: 155,
              color: ColorManager.whiteAppColor,
            ),
            verticalSpace(5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'The National Liver Institute was established in 1986 by the late Prof. Dr. Yassin Abdel Ghaffar as a unique specialized academic institution in Africa and the Middle East for the study of liver diseases, whose goal was to provide distinguished health care services in the management of liver diseases and to contribute to the training and qualification of qualified doctors in the field of Liver disease in Egypt. Today, the National Liver Institute has become a scientific edifice in the field of health services, academic and scientific research.',
                style: TextStyles.font16WhiteMedium.copyWith(fontSize: 14),
                // textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
