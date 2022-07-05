// ignore_for_file: use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/controllers/home_controller.dart';
import 'package:food_delivery/routes/app_routes.dart';
import 'package:food_delivery/widgets/product_detail.dart';
import 'package:food_delivery/widgets/toggled_buttom.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Scaffold(
        backgroundColor: const Color(0xFFFFF1E5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50.h, right: 15.w, left: 15.w),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 1,
                color: const Color(0xFFFFF1E5),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.HOME);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.favorite_border_outlined),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CarouselSlider.builder(
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) {
                        return Container(
                          height: 100.h,
                          width: 600.w,
                          child: Image.asset('assets/images/chimi2.png'),
                        );
                      },
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.8,
                          aspectRatio: 1.9,
                          initialPage: 2,
                          autoPlayInterval: Duration(seconds: 20),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 2000),
                          autoPlayCurve: Curves.fastOutSlowIn),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 1,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 30.h,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(
                        0,
                        0,
                      ), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Chicken burger',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.sp,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.star_border,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            const Text(
                              '0.0',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ToggledButton(
                      name: 'Burger',
                      widthWidget: 123,
                      isSelect: false,
                      iconText: '🍔',
                      function: () {},
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ 22.00',
                          style: TextStyle(
                            color: const Color(0xFFFF9431),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                        Container(
                          height: 34.h,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF1E5),
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFF9431),
                                    borderRadius: BorderRadius.circular(50.r),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              GestureDetector(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFF9431),
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        ProductDetail(typeName: 'Size', description: 'Medium'),
                        ProductDetail(
                            typeName: 'Energy', description: '554 KCal'),
                        ProductDetail(
                            typeName: 'Delivery', description: '45 min'),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Descripcion',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                      "Suspendisse efficitur efficitur sapien nec bibendum. "
                      "Maecenas fringilla quam eu volutpat pulvinar. Nulla facilisi. "
                      "Quisque quam nisl.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFFFF9431),
                          fixedSize: Size(300.w, 52.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                        ),
                        child: Text(
                          'Agregar al carrito',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
