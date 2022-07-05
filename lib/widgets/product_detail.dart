import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetail extends StatelessWidget {
  final String typeName;
  final String description;

  const ProductDetail(
      {Key? key, required this.typeName, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 94.w,
      height: 64.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFFF9431),
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            typeName,
            style: const TextStyle(
              color: Color(0xFFFF9431),
            ),
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
