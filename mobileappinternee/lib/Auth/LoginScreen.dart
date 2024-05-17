import 'package:mobileappinternee/Auth/Signup.dart';
import 'package:mobileappinternee/Home/Home.dart';
import 'package:mobileappinternee/const/CustomTextFields.dart';
import 'package:mobileappinternee/const/OurButton.dart';
import 'package:mobileappinternee/const/commonbackground.dart';
import 'package:mobileappinternee/const/const.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mobileappinternee/const/color.dart';
import 'package:mobileappinternee/const/fontstyle.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          Padding(padding: EdgeInsets.all(12)),
          Align(
              alignment: Alignment.center,
              child: welcome.text
                  .color(maincolor)
                  .size(38)
                  .fontFamily(bold)
                  .make()),
          "Login Into $appname"
              .text
              .fontFamily(semibold)
              .color(maincolor)
              .size(18)
              .make(),
          20.heightBox,
          Column(
            children: [
              CustomtextFields(title: "Name", hint: "Hassan Ali "),
              CustomtextFields(title: "Email", hint: "Hassan@gmail.com"),
              20.heightBox,
              SizedBox(
                height: context.screenHeight * 0.06,
                width: context.screenWidth - 90,
                child: ourbutton(
                    title: "Login",
                    Textcolor: maincolor,
                    color: textcolor,
                    onPress: () {
                      Get.to(() => Home());
                    }),
              ),
              10.heightBox,
              create.text.fontFamily(semibold).color(textcolor).make(),
              10.heightBox,
              SizedBox(
                height: context.screenHeight * 0.06,
                width: context.screenWidth - 90,
                child: ourbutton(
                    title: "Signup",
                    Textcolor: maincolor,
                    color: textcolor,
                    onPress: () {
                      Get.to(() => signupScreen());
                    }),
              ),
            ],
          )
              .box
              .padding(EdgeInsets.all(12))
              .margin(EdgeInsets.all(12))
              .green600
              .shadowSm
              .rounded
              .make()
        ],
      ),
    );
  }
}
