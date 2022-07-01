import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardContentFood extends StatelessWidget {
  const CardContentFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207.h,
      width: 155.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFFF9431).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(
              0,
              0,
            ), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
