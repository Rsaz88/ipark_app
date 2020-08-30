import 'package:flutter/material.dart';

import 'onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        backgroundColor: Colors.black,
      ),
      home: OnboardingPage(),
    );
  }
}
