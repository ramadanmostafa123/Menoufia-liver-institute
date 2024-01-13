import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menofia_liver_institute/core/helpers/extentions.dart';
import 'package:menofia_liver_institute/core/helpers/spacing.dart';
import 'package:menofia_liver_institute/core/routing/routes.dart';
import 'package:menofia_liver_institute/core/theming/colors.dart';
import 'package:menofia_liver_institute/core/widgets/line.dart';
import 'package:menofia_liver_institute/features/home/data/model/adminstration.dart';
import 'package:menofia_liver_institute/features/home/widgets/adminstarion/member_details_page.dart';

class Adminstration extends StatelessWidget {
  const Adminstration({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: adminstrationList.length,
      separatorBuilder: (context, index) => const Line(width: double.infinity),
      itemBuilder: (context, index) {
        return buildAdminstrationMembers(adminstrationList[index], context);
      },
    );
  }
}

List<AdminstrationModel> adminstrationList = [
  AdminstrationModel(
      image:
          'https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg?size=626&ext=jpg&uid=R64649530&ga=GA1.2.1009196403.1658088858',
      body:
          'Conducting genome studies as a whole to identify the genetic background that increases the risk of developing liver tumors',
      name: 'Dr / Shimaaa AbdelSartar',
      id: 1),
  AdminstrationModel(
      image:
          'https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?w=360&t=st=1662489781~exp=1662490381~hmac=a8b4931513d5d8974488dbeaa6d100cd6282536ec61893abb73b3acfe8d6d434',
      body:
          'The National Liver Institute - Menoufia University is committed to providing educational programs for the postgraduate level in accordance with the approved academic standards and adopts innovative scientific research in the field of liver and digestive diseases, as well as providing a distinguished health service and working to meet the needs of society and develop the environment in light of the ethics and ethics of the profession',
      name: 'Dr / Fatma Omar',
      id: 2),
  AdminstrationModel(
      image:
          'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?size=338&ext=jpg&uid=R64649530&ga=GA1.2.1009196403.1658088858',
      body:
          'Conducting genome studies as a whole to identify the genetic background that increases the risk of developing liver tumors',
      name: 'reda ',
      id: 3),
  AdminstrationModel(
      image:
          'https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg?size=626&ext=jpg&uid=R64649530&ga=GA1.2.1009196403.1658088858',
      body:
          'Conducting genome studies as a whole to identify the genetic background that increases the risk of developing liver tumors',
      name: 'Heba Ibrahime',
      id: 4),
];

Widget buildAdminstrationMembers(
        AdminstrationModel adminstration, BuildContext context) =>
    InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MemberDetailsPage(member: adminstration),
          )),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundImage: NetworkImage(
                adminstration.image,
              ),
            ),
            horisontalSpace(20),
            Expanded(
              child: SizedBox(
                height: 90.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      adminstration.name,
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: ColorManager.mainBlue,
                          fontWeight: FontWeight.w500),
                    ),
                    verticalSpace(5),
                    Expanded(
                      child: Text(
                        adminstration.body,
                        style: TextStyle(fontSize: 13.sp),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
