import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/features/chat/chat.dart';
import 'package:flutter_starter/features/home/home.dart';
import 'package:flutter_starter/features/login/login.dart';
import 'package:flutter_starter/features/product/product.dart';
import 'package:flutter_starter/features/profile/profile.dart';
import 'package:flutter_starter/features/register/register.dart';
// import 'package:flutter_starter/features/settings/settings.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  const AppRouter._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      // Home Module
      GoRoute(
        path: '/home',
        builder: (context, state) => const MainPage(),
      ),

      // Login Module
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginPage(),
      ),

      // Register Module
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),

      // Register Module
      GoRoute(
        path: '/chat',
        builder: (context, state) => const DetailChatPage(),
      ),

      // Register Module
      GoRoute(
        path: '/profile/edit',
        builder: (context, state) => const EditProfilePage(),
      ),

      // Register Module
      GoRoute(
        path: '/product',
        builder: (context, state) => const ProductPage(),
      ),

      // Settings Module
      // GoRoute(
      //   path: '/settings',
      //   builder: (context, state) => const SettingsPage(),
      // ),
    ],
    errorBuilder: (context, state) {
      return Text('Error Page : ${state.error}');
    },
    urlPathStrategy: UrlPathStrategy.path,
    debugLogDiagnostics: kDebugMode,
  );
}
