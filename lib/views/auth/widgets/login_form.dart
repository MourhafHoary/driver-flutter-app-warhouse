import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/component/custom_filed_button.dart';
import '../../../core/component/custom_text_filed.dart';
import '../../../core/locallization/app_text.dart';
import '../../../core/theme/app_colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         AppText('Your Email', fontFamily: 'Inter',style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
        SizedBox(height: 8.h),
        const CustomTextFiled(),
        SizedBox(height: 16.h,),
        const AppText('Password', fontFamily: 'Inter',),
        SizedBox(height: 8.h,),
        const CustomTextFiled(),
        SizedBox(height: 12.h),
        Row(
          children: [
            const AppText(
              'Wrong password',
              fontFamily: 'Inter',
              style: TextStyle(color: AppColors.surface),
            ),
            SizedBox(width: 119.w),
            const InkWell(
                child: AppText(
                  'Forget password?',
                  fontFamily: 'Inter',
                  style: TextStyle(color: AppColors.primary),
                ))
          ],
        ),
        SizedBox(height: 18.h,),
        const CustomFiledButton(
          text: 'Continue',
        ),
      ],
    );
  }
}
