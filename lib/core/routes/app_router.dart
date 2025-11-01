import 'package:go_router/go_router.dart';
import 'package:untitled1/views/auth/pages/auth_page.dart';
import 'package:untitled1/views/auth/pages/forgetpassword_page.dart';

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
  ],
);