import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';

import '../../../application/cart/bloc/cart_bloc.dart';
import '../../core/gap_spacer.dart';

class EmptyProfile extends StatelessWidget {
  const EmptyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GapSpacer(
          height: 50.h,
        ),
        // Text(
        //   'Lets Get Started !',
        //   style: TextStyle(
        //       fontWeight: FontWeight.w600, fontSize: 26, color: Colors.black54),
        // ),
        GapSpacer(
          height: 50.h,
        ),
        Image.asset(
          'assets/emptyProfile.png',
          height: 180.h,
          width: 180.w,
        ),
        GapSpacer(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => context
                  .read<CartBloc>()
                  .add(WishListEmptyContinueShopping(context)),
              child: SizedBox(
                height: 35.h,
                child: const CustomIconButton(
                  name: 'Create Account',
                ),
              ),
            ),
          ],
        ),
        GapSpacer(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Aleady have account ?'),
            InkWell(
              onTap: () => context
                  .read<CartBloc>()
                  .add(WishListEmptyContinueShopping(context)),
              child: const Text('Sign in',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      color: Colors.black87)),
            )
          ],
        ),
      ],
    );
  }
}
