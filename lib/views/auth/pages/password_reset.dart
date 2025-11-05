import 'package:flutter/material.dart';
import 'package:untitled1/core/component/custom_filed_button.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/core/theme/app_colors.dart';

import '../widgets/button_back.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

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
                "Password reset",
                fontFamily: 'Poppins',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 18),
            AppText("Your password has been successfully reset click confirm to set a new password",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.gray
                ),
                fontFamily: 'Inter'),
            SizedBox(height: 36),
            CustomFiledButton(text: 'Confirm',)
          ],
        ),
      ),
    );
  }
}
