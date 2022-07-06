import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusWidget extends StatelessWidget {
  final String status;
  final Color colorsWidget;

  const StatusWidget(
      {Key? key, required this.status, required this.colorsWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 2.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: colorsWidget,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        status,
        style: GoogleFonts.nunito(
          textStyle: TextStyle(
            color: colorsWidget,
            //fontWeight: FontWeight.w900,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
