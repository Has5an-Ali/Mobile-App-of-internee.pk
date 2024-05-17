import 'package:flutter/material.dart';
import 'package:mobileappinternee/Auth/LoginScreen.dart';
import 'package:mobileappinternee/Home/Home.dart';
import 'package:mobileappinternee/const/CustomTextFields.dart';
import 'package:mobileappinternee/const/OurButton.dart';
import 'package:mobileappinternee/const/commonbackground.dart';
import 'package:mobileappinternee/const/const.dart';
import 'package:get/get.dart';
import 'package:mobileappinternee/const/fontstyle.dart';

class signupScreen extends StatelessWidget {
  const signupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          (context.screenHeight * 0.01).heightBox,
          Align(
              alignment: Alignment.center,
              child: welcome.text
                  .fontFamily(bold)
                  .size(32)
                  .color(maincolor)
                  .make()),
          "Create Account in $appname"
              .text
              .fontFamily(semibold)
              .size(18)
              .color(maincolor)
              .make(),
          Column(
            children: [
              CustomtextFields(title: "Name", hint: "Hassan Ali"),
              CustomtextFields(
                hint: "Hassan@gmail.com",
                title: "Email",
              ),
              CustomtextFields(
                hint: "******",
                title: "Password",
              ),
              CustomtextFields(
                hint: "******",
                title: "RetypePassword",
              ),
              10.heightBox,
              SizedBox(
                height: context.screenHeight * 0.06,
                width: context.screenWidth - 98,
                child: ourbutton(
                    title: "Signup",
                    Textcolor: maincolor,
                    color: textcolor,
                    onPress: () {
                      Get.to(() => Home());
                    }),
              ),
              10.heightBox,
              login.text.fontFamily(semibold).color(textcolor).make(),
              10.heightBox,
              SizedBox(
                height: context.screenHeight * 0.06,
                width: context.screenWidth - 98,
                child: ourbutton(
                    title: "Login",
                    Textcolor: maincolor,
                    color: textcolor,
                    onPress: () {
                      Get.to(() => LoginScreen());
                    }),
              ),
            ],
          )
              .box
              .padding(EdgeInsets.all(12))
              .margin(EdgeInsets.all(12))
              .shadowSm
              .color(maincolor)
              .rounded
              .make()
        ],
      ),
    );
  }
}
