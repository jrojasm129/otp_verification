import 'package:flutter/material.dart';
import 'package:otp_verification/screens/otp_screen/otp_screen.dart';
import 'package:otp_verification/theme/custom_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'otp verification',
      debugShowCheckedModeBanner: false,
      home: const OTPScreen(),
      theme: customThemeData
    );
  }
}






