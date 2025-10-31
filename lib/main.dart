import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:untitled1/views/auth/pages/auth_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/translation',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926), //*Basic design based on the figma styles
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // 🔹 Add localization delegates and locale here:
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

        home: const AuthPage(),
      ),
    );
  }
}
