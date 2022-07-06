import 'package:barcode/barcode.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/widgets/custom_painter.dart';
import 'package:food_delivery/widgets/status.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketDetail extends StatelessWidget {
  final String clientName;
  final String fechaCreacion;
  final String orderNumber;
  final String orderTotal;
  final String estimateOrderTime;
  final String orderStatus;

  const TicketDetail({
    Key? key,
    required this.clientName,
    required this.fechaCreacion,
    required this.orderNumber,
    required this.orderTotal,
    required this.estimateOrderTime,
    required this.orderStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: TicketWidget(
        width: 350.w,
        height: 400.h,
        isCornerRounded: true,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 332,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStatus(orderStatus),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                          color: const Color(0xFF000000),
                        ),
                        child: Image.asset('assets/images/logo.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Ticket',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Cliente',
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Text(
                            clientName,
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Fecha',
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Text(
                            fechaCreacion,
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Orden',
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Text(
                            orderNumber,
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Total',
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Text(
                            orderTotal,
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Tiempo estimado',
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      Text(
                        estimateOrderTime,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "™ Un Sitio Pa' Come 2022",
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const DottedLine(
              dashColor: Colors.grey,
            ),
            Container(
              alignment: Alignment.center,
              height: 83,
              child: buildBarcode(
                  Barcode.code128(useCode128A: false, useCode128C: false),
                  orderNumber),
            ),
          ],
        ),
      ),
    );
    ;
  }

  SvgPicture buildBarcode(
    Barcode bc,
    String data, {
    String? filename,
    double? width,
    double? height,
    double? fontHeight,
  }) {
    /// Create the Barcode
    final svg = bc.toSvg(
      data,
      width: width ?? 200,
      height: height ?? 78,
      fontHeight: fontHeight,
    );

    // Save the image
    return SvgPicture.string(svg);
  }

  Widget _buildStatus(String status) {
    switch (status.toUpperCase()) {
      case 'PENDIENTE':
        return const StatusWidget(
          colorsWidget: Colors.red,
          status: 'Pendiente',
        );
      case 'ENTREGADO':
        return const StatusWidget(
          colorsWidget: Colors.green,
          status: 'Entregado',
        );
      case 'PREPARANDO':
        return const StatusWidget(
          colorsWidget: Colors.blue,
          status: 'Preparando',
        );
      case 'EN CAMINO':
        return const StatusWidget(
          colorsWidget: Colors.orange,
          status: 'En camino',
        );

      default:
        return Container();
    }
  }
}
