import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundCard extends StatelessWidget {
  final Widget child;
  final double? padding;
  const BackgroundCard({
    Key? key,
    required this.child,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Set the desired height for the container
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: Offset(0.0, 0.0),
              blurRadius: 5.0,
            )
          ]),
      child: Padding(
        padding: padding == null
            ? EdgeInsets.all(20.0)
            : EdgeInsets.all(padding ?? 0),
        child: child,
      ),
    );
  }
}
