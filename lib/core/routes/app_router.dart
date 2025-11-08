import 'package:go_router/go_router.dart';
import 'package:untitled1/views/auth/pages/auth_page.dart';
import 'package:untitled1/views/auth/pages/check_your_email.dart';
import 'package:untitled1/views/auth/pages/forgetpassword_page.dart';
import 'package:untitled1/views/auth/pages/password_reset.dart';
import 'package:untitled1/views/auth/pages/set_new_password.dart';

import 'app_routes.dart';



final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.auth,
  routes: [
    GoRoute(
      path: AppRoutes.auth,
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      path: AppRoutes.forget,
      builder: (context, state) => const ForgetPassword(),
    ),
    GoRoute(
        path: AppRoutes.check,
        builder: (context, state) => const CheckYourEmail(),
    ),
    GoRoute(
      path: AppRoutes.passrest,
      builder: (context, state) => const PasswordReset(),
    ),
    GoRoute(
      path: AppRoutes.newpass,
      builder: (context, state) =>  SetNewPassword(),
    ),
  ],
);