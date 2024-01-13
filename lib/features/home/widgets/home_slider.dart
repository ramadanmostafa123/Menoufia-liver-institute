// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menofia_liver_institute/features/home/data/model/news_slider.dart';

// ignore: must_be_immutable
class HomeSlider extends StatelessWidget {
  HomeSlider({super.key});

  List<NewsSliderModel> newsList = [
    NewsSliderModel(
        title: 'first new',
        newsContent:
            'original words written by an author. Text is also a specific work as written by the original author. Text is also commonly used to refer to a text message or to send a text message. Text has several other senses as a noun.',
        newsImage:
            'https://img.freepik.com/free-photo/doctors-operation-room_23-2149372324.jpg?w=740&t=st=1662176015~exp=1662176615~hmac=b52d7244a30a374b6bfabdcc1543e79e7aa35a27cfd538b4babfaf35e40fe39d'),
    NewsSliderModel(
        title: 'second new',
        newsContent: 'Second new content',
        newsImage:
            'https://media.istockphoto.com/id/1134534083/photo/bright-close-up-of-male-doctor-in-uniform-holding-stethoscope-in-hospital-medical-concept.jpg?s=1024x1024&w=is&k=20&c=hjwFBIyHcoiB8HlVFSFYdpO4Bf1Lx6fwh5AI-b4-P8Q='),
    NewsSliderModel(
        title: 'Third new',
        newsContent: 'Third new content',
        newsImage:
            'https://media.istockphoto.com/id/1137550106/photo/bright-close-up-of-male-doctor-in-uniform-with-stethoscope-listening-and-holding-stethoscope.jpg?s=1024x1024&w=is&k=20&c=guEU7j4PRtscVvq6ZQ17QkmzRmQsp852j32HkXCbopI='),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        initialPage: 0,
        viewportFraction: 2,
        height: 250.h,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
      ),
      items: newsList
          .map(
            (item) => Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                GestureDetector(
                  onTap: () {
                    //navigateTo(context, NewsScreen(item));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        item.newsImage,
                      ),
                    ),
                  ),
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        //'Title',
                        item.title,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 5),
                      child: SizedBox(
                        width: 300,
                        child: DelayedDisplay(
                          delay: const Duration(seconds: 1),
                          child: Text(
                            item.newsContent,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'jannah',
                              height: 1.2.h,
                              color: Colors.white,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
