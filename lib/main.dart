import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/bindings/main_binding.dart';
import 'package:food_delivery/screens/main_screen.dart';
import 'package:get/route_manager.dart';

import 'routes/app_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //final isLight = SchedulerBinding.instance.window.platformBrightness == Brightness.light;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // ignore: prefer_const_constructors
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Delivery App',
          home: MainScreen(),
          initialBinding: MainPageBinding(),
          getPages: AppPages.pages,
        );
      },
      designSize: const Size(375, 812),
    );
  }
}
