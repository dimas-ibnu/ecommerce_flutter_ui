import 'package:ecommerce_app_flutter/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Test',
        theme: AppTheme.lightTheme,
        home: App());
  }

  // This widget is the root of your application
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage();
  }
}
