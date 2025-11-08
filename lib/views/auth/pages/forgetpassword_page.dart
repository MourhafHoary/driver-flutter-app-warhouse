import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/component/custom_filed_button.dart';
import 'package:untitled1/core/component/custom_text_filed.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/core/routes/app_routes.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/translations/locale_keys.g.dart';
import 'package:untitled1/core/component/button_back.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [ButtonBack()],
        ),
      body:
      Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 48),
          SizedBox(height: 26),
          AppText(
              LocaleKeys.login_forget, fontFamily: 'Poppins',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 18),
          AppText(LocaleKeys.login_please, fontFamily: 'Inter',
          style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold,color: AppColors.gray),
          ),
          SizedBox(height: 30),
          AppText(
              LocaleKeys.login_email.tr(), fontFamily: 'Inter'
          ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          const CustomTextFiled(
            keyBoardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 26),
          InkWell(child: CustomFiledButton(text: LocaleKeys.login_reset.tr())
            ,onTap: (){
            context.push(AppRoutes.check) ;
            },
          )
        ],
            ),
      )
    );
  }
}
