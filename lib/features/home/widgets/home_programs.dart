import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menofia_liver_institute/core/helpers/spacing.dart';
import 'package:menofia_liver_institute/core/theming/colors.dart';
import 'package:menofia_liver_institute/core/widgets/app_text_buttom.dart';
import 'package:menofia_liver_institute/features/home/data/model/courses.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePrograms extends StatefulWidget {
  const HomePrograms({Key? key}) : super(key: key);

  @override
  State<HomePrograms> createState() => _HomeProgramsState();
}

class _HomeProgramsState extends State<HomePrograms> {
  bool isLast = false;

  var boardController = PageController();
  List<Courses> coursesList = [
    Courses(
      courseName: 'First Name Course',
      courseImage:
          'https://images.unsplash.com/photo-1550831107-1553da8c8464?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      courseContent:
          'Infinite Constraints in Parent Widgets:Check if any parent widgets in your widget tree are providing infinite constraints (e.g., Container(width: double.infinity)). This can disrupt the layout calculation.Widgets Inside ListView.builder:If you are using ListView.builder, ensure that the itemBuilder function returns widgets with finite height.',
    ),
    Courses(
        courseName: '2 Name Course',
        courseImage:
            'https://images.unsplash.com/photo-1530497610245-94d3c16cda28?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        courseContent: 'courseContent2'),
    Courses(
        courseName: '3 Name Course',
        courseImage:
            'https://images.unsplash.com/photo-1579165466949-3180a3d056d5?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        courseContent: 'courseContent3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .9,
          //height: 650.h,
          child: ConditionalBuilder(
            condition: coursesList.isNotEmpty,
            fallback: (context) => const Center(
              child: CircularProgressIndicator(
                color: ColorManager.mainBlue,
              ),
            ),
            builder: (context) => PageView.builder(
              onPageChanged: (int index) {
                if (index == coursesList.length - 1) {
                  print('last');
                  setState(() {
                    isLast = true;
                  });
                } else {
                  print('not last');
                  setState(() {
                    isLast = false;
                  });
                }
              },
              physics: const BouncingScrollPhysics(),
              controller: boardController,
              itemBuilder: (context, index) => buildCoursesItemForAnyProgram(
                context,
                coursesList[index],
              ),
              itemCount: coursesList.length,
            ),
          ),
        ),
        verticalSpace(10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.start,
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SmoothPageIndicator(
                  controller: boardController,
                  count: coursesList.length,
                  effect: const JumpingDotEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    jumpScale: .7,
                    verticalOffset: 15,
                  ),
                ),
              ),
              const Expanded(flex: 2, child: SizedBox()),
              Expanded(
                flex: 0,
                child: FloatingActionButton(
                  backgroundColor: ColorManager.mainBlue,
                  onPressed: () {
                    if (isLast == true) {
                    } else {
                      boardController.nextPage(
                        duration: const Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

Widget buildCoursesItemForAnyProgram(context, Courses courses) {
  return InkWell(
    onTap: () {
      //  navigateTo(context, OneProgramScreen(model));
    },
    child: Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * .1,
          left: MediaQuery.of(context).size.width * .1,
          top: 15.h,
          bottom: 5.h),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 10,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: MediaQuery.of(context).size.height * .5,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image(
                  image: NetworkImage(courses.courseImage
                      // 'https://reda-graduation.herokuapp.com/${program['img']}',
                      ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: ColorManager.mainBlue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  courses.courseName,
                  style: TextStyle(color: Colors.white, fontSize: 17.sp),
                ),
              ),
            ),
            verticalSpace(10),
            SizedBox(
              height: 120.h,
              child: Center(
                child: Text(
                  courses.courseContent,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            verticalSpace(35.h),
            AppTextButton(
              buttonWidth: 200,
              buttonText: 'Enroll This Course',
              onPressed: () {},
              textStyle: TextStyle(color: Colors.white, fontSize: 17.spMin),
            ),
          ],
        ),
      ),
    ),
  );
}
