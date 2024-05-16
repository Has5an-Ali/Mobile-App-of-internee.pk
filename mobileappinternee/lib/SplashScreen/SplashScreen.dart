import 'package:flutter/material.dart';
import 'package:mobileappinternee/const/color.dart';
import 'package:get/get.dart';
import '../Auth/LoginScreen.dart';
import '../const/fontstyle.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(() => LoginScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: maincolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Internee.pk",
              style:
                  TextStyle(fontSize: 32, fontFamily: bold, color: textcolor),
            )
          ],
        ),
      ),
    );
  }
}
