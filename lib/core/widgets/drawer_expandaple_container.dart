import "package:expandable/expandable.dart";
import "package:flutter/material.dart";
import "package:menofia_liver_institute/core/helpers/icon_broken.dart";
import "package:menofia_liver_institute/core/helpers/spacing.dart";

Widget drawerExpandableContainer({
  context,
  required var firstIcon,
  required String mainText,
  //required String secondText,
  required Widget dropDownList,

}) =>
    ExpandableNotifier(
      initialExpanded: false,
      child: Expandable(
        collapsed: ExpandableButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  firstIcon,
                  color: Colors.white,
                ),
              ),
              Text(
                mainText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'jannah',
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  IconBroken.Arrow___Down_2,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        expanded: ExpandableButton(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      firstIcon,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    mainText,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'jannah',
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      IconBroken.Arrow___Down_2,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              dropDownList,
             
            ],
          ),
        ),
      ),
    );

Widget dropDownrow({
  required String text,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
