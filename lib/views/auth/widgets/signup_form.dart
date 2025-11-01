import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/component/custom_filed_button.dart';
import 'package:untitled1/core/component/custom_text_filed.dart';

import '../../../core/locallization/app_text.dart';
import '../../../translations/locale_keys.g.dart';
import 'login_form.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        AppText(LocaleKeys.login_username.tr(), fontFamily: 'Inter',style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
         SizedBox(height: 8.h),
         const CustomTextFiled(),
         SizedBox(height: 16.h,),
         AppText(LocaleKeys.login_email.tr(), fontFamily: 'Inter',),
         SizedBox(height: 8.h,),
          const CustomTextFiled(),
          SizedBox(height: 16.h,),
         AppText(LocaleKeys.login_password.tr(), fontFamily: 'Inter'),
          SizedBox(height: 8.h,),
          const CustomTextFiled(),
          SizedBox(height: 16.h,),
         AppText(LocaleKeys.login_confirm.tr(), fontFamily: "Inter"),
          SizedBox(height: 8.h,),
          const CustomTextFiled(),
          SizedBox(height: 35.h,),
         CustomFiledButton(text: LocaleKeys.login_continue.tr(),)
    ]
    );
  }
}
