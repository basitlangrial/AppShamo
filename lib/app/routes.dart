import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/features/cart/cart.dart';
import 'package:flutter_starter/features/chat/chat.dart';
import 'package:flutter_starter/features/checkout/checkout.dart';
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

      // Chat Module
      GoRoute(
        path: '/chat',
        builder: (context, state) => const DetailChatPage(),
      ),

      // Profile Module
      GoRoute(
        path: '/profile/edit',
        builder: (context, state) => const EditProfilePage(),
      ),

      // Product Module
      GoRoute(
        path: '/product',
        builder: (context, state) => const ProductPage(),
      ),

      // Cart Module
      GoRoute(
        path: '/cart',
        builder: (context, state) => const CartPage(),
      ),

      // Checkout Module
      GoRoute(
        path: '/checkout',
        builder: (context, state) => const CheckoutPage(),
      ),
      GoRoute(
        path: '/checkout/success',
        builder: (context, state) => const CheckoutSuccessPage(),
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
