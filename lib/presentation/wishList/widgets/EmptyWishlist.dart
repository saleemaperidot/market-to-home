import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/cart/bloc/cart_bloc.dart';

import '../../commonWidgets/custom_icon_button.dart';
import '../../core/gap_spacer.dart';

class EmptyWishList extends StatelessWidget {
  const EmptyWishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GapSpacer(
          height: 30.h,
        ),
        Image.asset(
          'assets/EmptyWishList.png',
          height: 120.h,
          width: 120.w,
        ),
        GapSpacer(
          height: 30.h,
        ),
        const Text(
          'Create Your Ultimate Shopping List ',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        const Text('Keep track of all the things you love and want'),
        const Text('to buy later with our wishlist!!'),
        GapSpacer(
          height: 20.h,
        ),
        GapSpacer(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => context
                  .read<CartBloc>()
                  .add(WishListEmptyContinueShopping(context)),
              child: const CustomIconButton(
                name: ' Continue Shopping ',
              ),
            ),
          ],
        )
      ],
    );
  }
}
