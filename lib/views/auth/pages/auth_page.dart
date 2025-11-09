import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/translations/locale_keys.g.dart';
import 'package:untitled1/views/auth/widgets/additional_login.dart';
import 'package:untitled1/views/auth/widgets/login_form.dart';
import 'package:untitled1/views/auth/widgets/or_divider.dart';
import 'package:untitled1/views/auth/widgets/signup_form.dart';
import 'package:untitled1/views/auth/widgets/tap_selector.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 52.h),
                  Center(
                    child: TapSelector(
                      //* change the content based on the selected tap
                      isLogin: isLogin,
                      onChanged: (value) {
                        setState(() {
                          isLogin = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 72.h),
                  AuthPageContent(isLogin: isLogin),
                ],
              ),
            ),
          ),
        ),
      );
  }
}

/// content widget
class AuthPageContent extends StatelessWidget {
  final bool isLogin;

  const AuthPageContent({super.key, required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return isLogin
        ? Column(
            children: [
              Text(
                LocaleKeys.login_pageContentTitle.tr(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              const LoginForm(),
              SizedBox(height: 43.h),
              const OrDivider(),
              SizedBox(height: 35.h),
              const AdditionalLogin(),
            ],
          )
        : Column(
            children: [
              Text(
                LocaleKeys.login_signup.tr(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              //* singUp
              const SignUpForm(),
              SizedBox(height: 43.h),
              const OrDivider(),
              SizedBox(height: 35.h),
              //*Additional login
              const AdditionalLogin(),
            ],
          );
  }
}
