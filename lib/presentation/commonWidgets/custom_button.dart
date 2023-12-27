import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  // final void Function()? onPress;
  final String name;
  const CustomButton({
    required this.name,
    // this.onPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 35.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 206, 198, 198).withOpacity(0.6),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 226, 206, 206).withOpacity(1),
            Colors.orange,
          ],
          begin: Alignment.topCenter,
          end: Alignment.center,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: SizedBox(
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
