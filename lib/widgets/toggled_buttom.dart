import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggledButton extends StatelessWidget {
  final String name;
  final double widthWidget;
  final bool isSelect;
  final String iconText;
  final VoidCallback function;

  const ToggledButton({
    Key? key,
    required this.name,
    required this.widthWidget,
    required this.isSelect,
    required this.iconText,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: TextButton.styleFrom(
        backgroundColor:
            isSelect ? const Color(0xFFFF9431) : Colors.transparent,
        fixedSize: Size(widthWidget.w, 40.h),
        //padding: EdgeInsets.symmetric(horizontal: 40.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        side: isSelect
            ? null
            : const BorderSide(
                color: Color(0xFFFF9431),
                width: 2,
              ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            iconText,
            style: TextStyle(
              fontSize: 24.sp,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
