import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menofia_liver_institute/core/helpers/constants.dart';
import 'package:menofia_liver_institute/core/helpers/icon_broken.dart';
import 'package:menofia_liver_institute/core/localization/language_settings/settings.dart';
import 'package:menofia_liver_institute/core/theming/colors.dart';
import 'package:menofia_liver_institute/core/widgets/drawer_expandaple_container.dart';
import 'package:menofia_liver_institute/features/home/data/model/drawer.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    final ScrollController _scrollController2 = ScrollController();

    List<DropDownPages> department = [
      DropDownPages(
        pageName: 'Clinical microbiology and immunology',
        page: const Settings(),
      ),
      DropDownPages(
        pageName: 'Clinical Biochemistry and Molecular Diagnostics',
        page: const Settings(),
      ),
      DropDownPages(
        pageName: 'Pathology',
        page: const Settings(),
      ),
      DropDownPages(
        pageName: 'Clinical and Molecular Parasitology',
        page: const Settings(),
      ),
      DropDownPages(
        pageName: 'Epidemiology and Preventive Medicine',
        page: const Settings(),
      ),
      DropDownPages(
        pageName: 'Department Num #6',
        page: const Settings(),
      ),
    ];
    List<DropDownPages> sectors = [
      DropDownPages(
        pageName: 'Community service and environmental development',
        page: const Settings(),
      ),
      DropDownPages(
        pageName: 'Graduate studies & Reasearch',
        page: const Settings(),
      ),
    ];

    return Drawer(
      backgroundColor: ColorManager.mainBlue.withOpacity(0.5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: ColorManager.mainBlue.withOpacity(0.1),
              ),
              accountName: Text(
                'Menofia Liver Insistute',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontFamily: 'jannah',
                ),
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(Constants.instituteImage),
              ),
              accountEmail: null,
            ),
            drawerExpandableContainer(
              firstIcon: IconBroken.Work,
              mainText: 'Departments',
              dropDownList: SizedBox(
                height: 120.h,
                child: Scrollbar(
                  controller: _scrollController,
                  trackVisibility: true,
                  thumbVisibility: true,
                  interactive: true,
                  thickness: 15,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: department.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildDropDownList(department[index], context);
                    },
                  ),
                ),
              ),
            ),
            drawerExpandableContainer(
              firstIcon: IconBroken.Scan,
              mainText: 'sectors',
              dropDownList: Container(
                color: Colors.transparent,
                height: 120.h,
                child: Scrollbar(
                  trackVisibility: true,
                  thumbVisibility: true,
                  interactive: true,
                  controller: _scrollController2,
                  child: ListView.builder(
                    controller: _scrollController2,
                    itemCount: sectors.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildDropDownList(sectors[index], context);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildDropDownList(DropDownPages pages, BuildContext context) {
  return InkWell(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pages.page,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Text(
        pages.pageName,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 13,
          fontFamily: 'jannah',
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}
