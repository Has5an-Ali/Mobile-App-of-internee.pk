import 'package:flutter/material.dart';
import 'package:mobileappinternee/const/const.dart';

Widget commonbg({required Scaffold child}) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assest/images/bg.png'), fit: BoxFit.cover)),
    child: child,
  );
}
