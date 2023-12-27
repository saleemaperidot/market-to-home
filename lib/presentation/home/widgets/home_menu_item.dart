import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeMenuItem extends StatelessWidget {
  final String imgUrl;
  final String menuName;
  final int isAvailable;
  const HomeMenuItem({
    required this.imgUrl,
    required this.menuName,
    required this.isAvailable,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          Container(
            width: 85.h,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0.0, 2.0),
                blurRadius: 4.0,
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(children: [
              Image.network(
                imgUrl,
                height: 45.h,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(menuName, style: Theme.of(context).textTheme.subtitle2)
            ]),
          ),
          Visibility(
            visible: isAvailable == 0,
            child: Container(
              width: 85.h,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black87.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text(
                'Coming soon..',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w900),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
