import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/presentation/cart/cart.dart';

import '../../application/cart/bloc/cart_bloc.dart';

class CartBar extends StatelessWidget {
  const CartBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8.h,
      left: 0,
      right: 0,
      child: InkWell(
        onTap: (() => Navigator.of(context).pushNamed(Cart.routeCart)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(1.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                  color: Theme.of(context).colorScheme.primary,
                ),
                height: 38.h,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${state.cartQuantity} Items',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            color: Colors.white,
                            width: 2.w,
                            height: 25.h,
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text('AED ${state.Total}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp)),
                        ],
                      ),
                      Container(
                        width: 90.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('View Cart',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 12.sp,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
