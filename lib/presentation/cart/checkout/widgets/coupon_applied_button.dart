import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/cart/order/bloc/order_bloc.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';

class CouponAppliedButton extends StatelessWidget {
  final String name;
  const CouponAppliedButton({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 10.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 206, 198, 198).withOpacity(0.6),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
        color: Color.fromARGB(255, 56, 138, 59),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
            ),
          ),
          GapSpacer(
            width: 5.w,
          ),
          InkWell(
            onTap: () =>
                BlocProvider.of<OrderBloc>(context).add(const RemoveCoupon()),
            child: Icon(
              Icons.cancel_outlined,
              color: Colors.white,
              size: 18.r,
            ),
          )
        ],
      ),
    );
  }
}
