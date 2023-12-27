import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/cart/bloc/cart_bloc.dart';

import '../../commonWidgets/custom_icon_button.dart';
import '../../core/gap_spacer.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GapSpacer(
          height: 60.h,
        ),
        Image.asset(
          'assets/EmptyCart.png',
          height: 160.h,
          width: 160.w,
        ),
        GapSpacer(
          height: 20.h,
        ),
        Text(
          'There are no products in the cart!',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: Colors.black45),
        ),
        GapSpacer(
          height: 40.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => context
                  .read<CartBloc>()
                  .add(WishListEmptyContinueShopping(context)),
              child: const CustomIconButton(
                name: 'Continue Shopping',
              ),
            ),
          ],
        )
      ],
    );
  }
}
