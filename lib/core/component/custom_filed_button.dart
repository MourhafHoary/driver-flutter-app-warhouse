import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/gen/fonts.gen.dart';

class CustomFiledButton extends StatelessWidget {
  final String text;

  const CustomFiledButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.primary,
        ),
        width: 376.w,
        height: 56.h,
        child: Center(
            child: AppText(text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
                fontFamily: FontFamily.poppins)),
      ),
    );
  }
}
