import 'package:animate_do/animate_do.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/controllers/home_controller.dart';
import 'package:food_delivery/routes/app_routes.dart';
import 'package:food_delivery/widgets/card_food_content.dart';
import 'package:food_delivery/widgets/custom_painter.dart';
import 'package:food_delivery/widgets/ticket_detail.dart';
import 'package:food_delivery/widgets/toggled_buttom.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icon_badge/icon_badge.dart';

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
          backgroundColor: const Color(0xFF21242B),
          title: Text(
            'Jaime App.',
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                _showTickectModal(context);
              },
              icon: const Icon(
                Icons.history,
              ),
            ),
            IconBadge(
              icon: Icon(Icons.shopping_cart),
              itemCount: 3,
              badgeColor: Colors.red,
              itemColor: Colors.white,
              hideZero: true,
              onTap: () {
                Get.offAllNamed(AppRoutes.CARTPAGE);
              },
            ),
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
          color: const Color(0xFF21242B),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                        SlideInLeft(
                          //controller: AnimationController.unbounded(vsync: vsync),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10, top: 2),
                            child: Image.asset(
                              'assets/images/motorcito.png',
                              width: 105,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
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

  void _showTickectModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const TicketDetail(
          clientName: 'Eliu Ortega',
          fechaCreacion: '06-07-2022',
          orderNumber: '-JiGh_31GA20JabpZBfa',
          orderTotal: 'RD\$ 400.00',
          estimateOrderTime: '45 Min.',
          orderStatus: 'En camino',
        );
      },
    );
  }
}
