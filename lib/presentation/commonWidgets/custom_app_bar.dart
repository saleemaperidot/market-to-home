import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/presentation/cart/cart.dart';
import 'package:market_2_home/presentation/commonWidgets/search_bar.dart';
import 'package:market_2_home/presentation/wishList/wishlist.dart';

import '../../application/home/dashboard/bloc/dash_borad_bloc.dart';

class CustomAppBar extends StatelessWidget {
  final String shopeName;
  final String category;
  const CustomAppBar({
    Key? key,
    required this.shopeName,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    shopeName,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.white, fontSize: 14),
                  ),
                  Text(
                    '($category)',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              CartWishIconAcations(
                onWishListTap: (() =>
                    Navigator.of(context).pushNamed(WishList.routeWishlist)),
                onCartTap: (() =>
                    Navigator.of(context).pushNamed(Cart.routeCart)),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.white,
            height: 15.h,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 15.w,
          left: 15.w,
          child: InkWell(
              onTap: () =>
                  context.read<DashBoradBloc>().add(SearchClick(context)),
              child: AbsorbPointer(child: const SearchBars())),
        )
      ],
    );
  }
}

class CartWishIconAcations extends StatelessWidget {
  final VoidCallback onWishListTap;
  final VoidCallback onCartTap;
  const CartWishIconAcations({
    Key? key,
    required this.onWishListTap,
    required this.onCartTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(onTap: onWishListTap, child: const WishListIcon()),
        SizedBox(
          width: 8.w,
        ),
        InkWell(onTap: onCartTap, child: const CartIcon()),
      ],
    );
  }
}

class WishListIcon extends StatelessWidget {
  const WishListIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: Offset(1.0, 2.0),
              blurRadius: 3.0,
            ),
          ],
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12)),
      child: Icon(
        Icons.favorite_border,
        color: Colors.white,
      ),
    );
  }
}

class CartIcon extends StatelessWidget {
  const CartIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              offset: Offset(1.0, 2.0),
              blurRadius: 3.0,
            ),
          ],
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12)),
      child: Icon(
        Icons.shopping_cart_outlined,
        color: Colors.white,
      ),
    );
  }
}
