import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/core/theme/app_colors.dart';


class CustomOutline extends StatelessWidget {
  final String imagebath ;
  final String text ;
  const CustomOutline({super.key, required this.imagebath, required this.text});


  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: Container(
        width: 376,
        height: 56,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.surface,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(height: 18.h,width: 23.w,imagebath),
             SizedBox(width: 8.w),
            Center(child: AppText(text, fontFamily: 'Inter',style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),)),
          ],
        ),
      ),
    );
  }
}
