import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/translations/locale_keys.g.dart';
import 'package:untitled1/views/auth/widgets/button_back.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 52),
                  Center(
                    child: TapSelector(
                      isLogin: isLogin,
                      onChanged: (value) {
                        setState(() {
                          isLogin = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 72),
                  AuthPageContent(isLogin: isLogin),
                  const ButtonBack(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
        const SizedBox(height: 43),
        const OrDivider(),
        const SizedBox(height: 35),
        const AdditionalLogin(),
      ],
    )
        : Column(
      children: [
        Text(
          LocaleKeys.login_signup.tr(),
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        // SignUpForm(),
        SignUpForm(),
        SizedBox(height: 43),
        OrDivider(),
        SizedBox(height: 35),
        AdditionalLogin(),
      ],
    );
  }
}
