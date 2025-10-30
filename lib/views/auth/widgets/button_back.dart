import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import '../../../gen/assets.gen.dart';


class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 42.w,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: const Icon(Icons.arrow_back_ios_new)
    );
  }
}
