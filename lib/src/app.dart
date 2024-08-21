import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/theme/app_theme.dart';
import 'package:sty_lish_app/src/features/auth/presentation/pages/login_page.dart';

class StyLishApp extends StatelessWidget {
  const StyLishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: appTheme,
    );
  }
}
