import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    ScreenUtilInit(
        designSize: Size(294.72, 607.68),
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            title: "Application",
            initialRoute: AppPages.initial,
            getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,

          );
        }),
  );
}
