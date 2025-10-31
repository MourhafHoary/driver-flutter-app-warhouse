import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/translations/locale_keys.g.dart';
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
         AppText(LocaleKeys.login_email.tr(), fontFamily: 'Inter',style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
        SizedBox(height: 8.h),
        const CustomTextFiled(),
        SizedBox(height: 16.h,),
        AppText(LocaleKeys.login_password.tr(), fontFamily: 'Inter',),
        SizedBox(height: 8.h,),
        const CustomTextFiled(),
        SizedBox(height: 12.h),
        Row(
          children: [
             AppText(
              LocaleKeys.login_wrong.tr(),
              fontFamily: 'Inter',
              style: TextStyle(color: AppColors.surface),
            ),
            SizedBox(width: 119.w),
             InkWell(
                child: AppText(
                  LocaleKeys.login_forget.tr(),
                  fontFamily: 'Inter',
                  style: TextStyle(color: AppColors.primary),
                ))
          ],
        ),
        SizedBox(height: 18.h,),
         CustomFiledButton(
          text: LocaleKeys.login_continue.tr(),
        ),
      ],
    );
  }
}
