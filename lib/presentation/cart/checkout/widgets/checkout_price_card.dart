import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutPriceCard extends StatelessWidget {
  final String title;
  final String price;
  final Color? color;
  final bool? aedVisibility;

  const CheckoutPriceCard(
      {super.key,
      required this.title,
      required this.price,
      this.color,
      this.aedVisibility});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title  :  ',
            style: TextStyle(
                fontSize: 14.sp, fontWeight: FontWeight.w400, color: color),
          ),
          Text('${aedVisibility != null ? 'AED' : ''}  $price',
              style: TextStyle(
                  fontSize: 14.sp, fontWeight: FontWeight.w600, color: color))
        ],
      ),
    );
  }
}
