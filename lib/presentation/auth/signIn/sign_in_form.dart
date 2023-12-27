import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/inner_tab_bar.dart';

class SingInForm extends StatelessWidget {
  const SingInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50.w),
          color: Colors.white,
          height: 2.h,
        ),
        Container(
          height: 240.h,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: const Offset(0.0, 2.0),
              blurRadius: 4.0,
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: InnerTabBar(),
          ),
        ),
      ],
    );
  }
}
