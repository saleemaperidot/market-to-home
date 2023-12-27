import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String? countryCode;
  final bool? obsecure;
  final TextEditingController? controller;
  final bool? isEnable;
  final String hint;
  final TextInputType? inputType;
  final Widget? icon;

  const CustomTextField({
    this.inputType,
    required this.hint,
    this.icon,
    this.countryCode,
    Key? key,
    this.controller,
    this.obsecure,
    this.isEnable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.h,
      padding: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: const Offset(0.5, 0.5),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Row(
        children: [
          icon ?? SizedBox(),
          SizedBox(
            width: 6.w,
          ),
          countryCode?.isNotEmpty == true
              ? Text(
                  countryCode.toString(),
                  style: TextStyle(fontSize: 15.sp),
                )
              : const SizedBox(),
          SizedBox(
            width: 6.w,
          ),
          icon != null
              ? Container(
                  width: 1,
                  color: Colors.black,
                  height: 20.h,
                )
              : SizedBox(),
          SizedBox(
            width: 6.w,
          ),
          SizedBox(
            child: TextField(
              keyboardType: inputType,
              obscureText: obsecure == null ? false : true,
              controller: controller,
              enabled: isEnable,
              style: TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                  labelStyle:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  hintText: hint,
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400),
                  border: InputBorder.none),
            ),
            width: countryCode == null
                ? MediaQuery.of(context).size.width * 0.5.w
                : MediaQuery.of(context).size.width * 0.4.w,
            height: MediaQuery.of(context).size.width * 0.5.h,
          ),
        ],
      ),
    );
  }
}
