import 'package:first_reexam/utiles/app_routes.dart';
import 'package:first_reexam/utiles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: screen,
      theme: lightTheme,
    ),
  );
}
