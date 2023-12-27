import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KeyValueRow extends StatelessWidget {
  final String keys;
  final String value;

  const KeyValueRow({
    Key? key,
    required this.keys,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(keys, style: TextStyle(fontWeight: FontWeight.w600)),
          Text(value)
        ],
      ),
    );
  }
}
