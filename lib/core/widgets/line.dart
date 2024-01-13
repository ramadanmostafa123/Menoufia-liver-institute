import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Container line(double width,Color color) {
//   return Container(
//     height: 1.h,
//     width: width.w,
//     color: Colors.black ?? ,

//   );
// }

class Line extends StatelessWidget {
final double width ;
final Color? color ;

  const Line({super.key, required this.width,  this.color});

  @override
  Widget build(BuildContext context) {
    return 
    
   Container(
    height: 1.h,
    width: width.w,
    color:color ?? Colors.black  ,

  );
}
    

}


