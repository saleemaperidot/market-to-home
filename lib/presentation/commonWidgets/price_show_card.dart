import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceShowCard extends StatelessWidget {
  final String title;
  final String price;
  const PriceShowCard({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title  :  ',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
          ),
          Text(price,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w700))
        ],
      ),
    );
  }
}
