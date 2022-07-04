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
        color: Color(0xFFF1F4FB),
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
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              color: const Color(0xFFFF9431),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.star_border,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '0.0',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                    height: 90,
                    width: 100,
                    child: Image.asset(
                      'assets/images/chimi2.png',
                      fit: BoxFit.cover,
                    )),
                Text(
                  'Chicken burger',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '200 gr chicken + cheese Lettuce + tomato',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ 22.00',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
