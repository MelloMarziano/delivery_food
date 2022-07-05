// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/controllers/main_controller.dart';
import 'package:food_delivery/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (_) => Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          padding: EdgeInsets.symmetric(
            vertical: 40.h,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/back.jpeg'),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4),
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/logo.png'),
              const Spacer(),
              Text(
                'Passionate about burger?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Text(
                  'Lorem ipsum este mi dolor, Lorem ipsum este mi dolor lorem ipsum este mi dolor nunca jamas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.HOME);
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFed9423),
                  fixedSize: Size(349.w, 54.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                child: Text(
                  'Empezar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
