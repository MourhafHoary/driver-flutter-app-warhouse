import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/component/custom_filed_button.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/core/routes/app_routes.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/translations/locale_keys.g.dart';

import '../../../core/component/button_back.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [ButtonBack()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 26.h),
            AppText(
                LocaleKeys.login_reset.tr(),
                fontFamily: 'Poppins',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 18.h),
            AppText(LocaleKeys.login_Sucpass.tr(),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.gray
                ),
                fontFamily: 'Inter'),
            SizedBox(height: 36.h),
            InkWell(
              onTap: (){
                context.push(AppRoutes.newpass);
              },
                child: CustomFiledButton(text: LocaleKeys.login_sure.tr(),)
            )
          ],
        ),
      ),
    );
  }
}
