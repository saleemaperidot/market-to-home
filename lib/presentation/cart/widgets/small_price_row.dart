import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallPriceRow extends StatelessWidget {
  final String title;
  final String price;
  const SmallPriceRow({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title  :  ',
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
        ),
        Text('$price AED',
            style: TextStyle(
                fontSize: 14.sp,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w700))
      ],
    );
  }
}
