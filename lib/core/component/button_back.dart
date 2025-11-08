import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/theme/app_colors.dart';


class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        (context).pop();
      },
      child: Container(
        height: 42.h,
        width: 42.w,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: const Icon(Icons.arrow_back_ios_new)
      ),
    );
  }
}
