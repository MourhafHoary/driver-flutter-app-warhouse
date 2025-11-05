import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/component/custom_filed_button.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/core/routes/app_routes.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/translations/locale_keys.g.dart';

import '../widgets/button_back.dart';

class CheckYourEmail extends StatelessWidget {
  const CheckYourEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 48),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(child: ButtonBack(),alignment: Alignment.centerLeft),
        ),
          SizedBox(height: 26),
              AppText(
                  LocaleKeys.login_check.tr(),
                  fontFamily: 'Poppins',
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
              ),
          SizedBox(height: 18),
              AppText(
                  LocaleKeys.login_code.tr(),
                  textAlign: TextAlign.end,
                  fontFamily: 'Inter',
                  style: 
                      TextStyle(
                      fontSize: 20 ,
                      fontWeight: FontWeight.bold,
                        color: AppColors.gray
                  ),
              ),
              SizedBox(height: 38,),
              OtpTextField(
                numberOfFields:5,
                showFieldAsBox: true,
                focusedBorderColor: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
                fieldWidth: 56,
              ),
              SizedBox(height: 26),
              InkWell(
                onTap: (){
                  context.push(AppRoutes.passrest);
                },
                  child: CustomFiledButton(text: LocaleKeys.login_verify.tr())
              ),
              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    fontFamily: "Inter",
                    LocaleKeys.login_emaily,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gray,
                    ),
                  ),
                  InkWell(
                      child: AppText(
                        fontFamily: "Inter",
                        LocaleKeys.login_resend,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                          decoration: TextDecoration.underline

                        ),

                      )
                  ),


                ],
              )
              
        ]
        ),
      ),
    );
  }
}
