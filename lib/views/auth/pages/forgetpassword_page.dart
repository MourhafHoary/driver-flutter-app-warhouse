import 'package:flutter/material.dart';
import 'package:untitled1/core/locallization/app_text.dart';
import 'package:untitled1/translations/locale_keys.g.dart';
import 'package:untitled1/views/auth/widgets/button_back.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(height: 48),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Align(child: ButtonBack(),alignment: Alignment.centerLeft),
        ),
        SizedBox(height: 26),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: AppText(
              LocaleKeys.login_forget, fontFamily: 'Poppins',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 18),
        AppText(LocaleKeys.login_please, fontFamily: 'Inter')
      ],
    ));
  }
}
