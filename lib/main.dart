import 'package:flutter/material.dart';
import 'package:uts_mobile_andika/theme/app_theme.dart';
import 'theme/app_theme.dart';
import 'pages/home_page.dart';


void main() {
  runApp(const InaklugApp());
}

class Inaklug extends StatelessWidget {
  const InaklugApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inaklug Company Profile',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePage,
    );
  }
}