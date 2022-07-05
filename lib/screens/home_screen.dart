import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/controllers/home_controller.dart';
import 'package:food_delivery/controllers/main_controller.dart';
import 'package:food_delivery/widgets/card_food_content.dart';
import 'package:food_delivery/widgets/toggled_buttom.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color(0xFF000000),
          title: Text(
            'Jaime App.',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  top: 15,
                ),
                child: Badge(
                  child: Icon(
                    Icons.shopping_cart,
                    size: 32.sp,
                    color: Colors.white,
                  ), //icon style
                  badgeContent: SizedBox(
                    width: 18.w,
                    height: 18.h, //badge size
                    child: Center(
                      //aligh badge content to center
                      child: Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white, //badge font color
                          fontSize: 15.sp, //badge font size
                        ),
                      ),
                    ),
                  ),
                  badgeColor: const Color(0xFFFF9431), //badge background color
                ),
              ),
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          padding: EdgeInsets.only(
            top: 15.h,
            left: 10.w,
            right: 10.w,
          ),
          color: const Color(0xFF000000),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ordena aqui',
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 28.sp,
                            ),
                          ),
                        ),
                        Text(
                          'Delivery!',
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/delivery.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ToggledButton(
                        name: 'Burger',
                        widthWidget: 123,
                        isSelect: true,
                        iconText: '🍔',
                        function: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      ToggledButton(
                        name: 'Hot Dog',
                        widthWidget: 123,
                        isSelect: false,
                        iconText: '🌭',
                        function: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      ToggledButton(
                        name: 'Sandwich',
                        widthWidget: 132,
                        isSelect: false,
                        iconText: '🥪',
                        function: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      ToggledButton(
                        name: 'Yaroas',
                        widthWidget: 123,
                        isSelect: false,
                        iconText: '🍟',
                        function: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      ToggledButton(
                        name: 'Pollo',
                        widthWidget: 123,
                        isSelect: false,
                        iconText: '🍗',
                        function: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      ToggledButton(
                        name: 'Otros',
                        widthWidget: 123,
                        isSelect: false,
                        iconText: '🌯',
                        function: () {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      ToggledButton(
                        name: 'Bebidas',
                        widthWidget: 123,
                        isSelect: false,
                        iconText: '🥤',
                        function: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 30,
                    runSpacing: 30,
                    children: const [
                      CardContentFood(),
                      CardContentFood(),
                      CardContentFood(),
                      CardContentFood(),
                      CardContentFood(),
                      CardContentFood(),
                      CardContentFood(),
                      CardContentFood(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
