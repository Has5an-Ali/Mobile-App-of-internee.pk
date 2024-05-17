import 'package:flutter/material.dart';
import 'package:mobileappinternee/const/color.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
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
        Get.to(() => const LoginScreen());
      },
    );
  }

  @override
  void initState() {
    changeScreen();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Internee.pk",
              style:
                  TextStyle(fontSize: 38, fontFamily: bold, color: textcolor),
            ),
            10.heightBox,
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(textcolor),
            )
          ],
        ),
      ),
    );
  }
}
