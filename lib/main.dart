import 'package:flutter/material.dart';
import 'package:shopify_clone/features/auth/views/pages/signup_page.dart';
import 'package:shopify_clone/resources/themes/themes.dart';

void main() {
  runApp(const SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const SignupPage(),
    );
  }
}
