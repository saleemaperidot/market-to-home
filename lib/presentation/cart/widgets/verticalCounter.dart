import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalCounter extends StatelessWidget {
  final void Function() quantityAdd;
  final void Function() quantityRemove;
  final String count;
  const VerticalCounter({
    Key? key,
    required this.quantityAdd,
    required this.quantityRemove,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: Offset(1.0, 2.0),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Column(children: [
        InkWell(
          onTap: quantityRemove,
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            radius: 13.r,
            child: Icon(
              Icons.remove,
              color: Colors.white,
              size: 20.r,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.w),
          child: Text(
            count,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.w100, fontSize: 18.sp),
          ),
        ),
        InkWell(
          onTap: quantityAdd,
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 54, 147, 57),
            radius: 13.r,
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}
