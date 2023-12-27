import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  // final void Function()? onPress;
  final String name;
  final Color? color;
  final IconData? icon;
  final double? size;
  const CustomIconButton({
    required this.name,
    this.icon,
    this.color,
    // this.onPress,
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            color ?? Colors.orange,
          ],
          begin: Alignment.topCenter,
          end: Alignment.center,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              children: [
                Visibility(
                  visible: icon != null,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: size,
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
