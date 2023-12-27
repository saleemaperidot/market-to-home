import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/cart/bloc/cart_bloc.dart';
import 'package:market_2_home/application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import 'package:market_2_home/presentation/cart/cart.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_app_bar.dart';
import 'package:market_2_home/presentation/wishList/widgets/EmptyWishlist.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  static const routeWishlist = 'routeWishlist';

  @override
  Widget build(BuildContext context) {
    log('rebuild');
    BlocProvider.of<CartBloc>(
      context,
    ).add(GetWishList(context));
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60.h,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: Row(
                children: [
                  InkWell(
                      onTap: () =>
                          Navigator.of(context).pushNamed(Cart.routeCart),
                      child: CartIcon()),
                ],
              ),
            )
          ],
          title: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Text('My Wishlist (${state.wishListProducts.length})');
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state.wishListProducts.isEmpty) {
                return const EmptyWishList();
              }

              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.w,
                      childAspectRatio: 1.6 / 2,
                      crossAxisSpacing: 25.h,
                      mainAxisSpacing: 25.w),
                  itemCount: state.wishListProducts.length,
                  itemBuilder: (BuildContext ctx, index) {
                    String image = state.wishListProducts[index].productImage!;
                    String productId =
                        state.wishListProducts[index].productId!.toString();
                    String title = state.wishListProducts[index].productName!;
                    String price =
                        state.wishListProducts[index].productPrice!.toString();

                    return InkWell(
                      onTap: () {
                        BlocProvider.of<VendorProductsBloc>(context).add(
                            GetProductDetails(
                                context, productId.toString(), 'wishlist'));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w.w),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  offset: Offset(1.0, 2.0),
                                  blurRadius: 3.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30.r)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.r),
                            child: Column(children: [
                              Expanded(
                                flex: 20,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10.0.h),
                                      child: CachedNetworkImage(
                                        imageUrl: image,
                                        placeholder: (context, url) =>
                                            const Center(
                                                child:
                                                    CircularProgressIndicator()),
                                        errorWidget: (context, url, error) =>
                                            const Center(
                                                child: Icon(
                                          Icons.error,
                                          color: Colors.red,
                                        )),
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.fill,
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () => BlocProvider.of<
                                                    CartBloc>(context)
                                                .add(RemoveFromWishListEvent(
                                                    context, productId)),
                                            child: Icon(
                                              Icons.cancel,
                                              size: 22.r,
                                              color: const Color.fromARGB(
                                                  255, 219, 151, 151),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 13,
                                child: Container(
                                  color: Colors.grey.withOpacity(0.1),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6),
                                            child: Text(
                                              title,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          // Padding(
                                          //   padding: const EdgeInsets.symmetric(
                                          //       horizontal: 6),
                                          //   child: Text(
                                          //     '900g-1000g',
                                          //     overflow: TextOverflow.ellipsis,
                                          //     style: TextStyle(
                                          //         fontSize: 12.sp,
                                          //         color: Colors.black87,
                                          //         fontWeight: FontWeight.w500),
                                          //   ),
                                          // ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'AED $price',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                InkWell(
                                                  onTap: () => BlocProvider.of<
                                                          CartBloc>(context)
                                                      .add(
                                                          AddToCartFromWishList(
                                                              context,
                                                              productId)),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    18.r)),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 2.h,
                                                              horizontal: 4.w),
                                                      child: Center(
                                                          child: Text(
                                                        'Add to cart',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.sp,
                                                        ),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ]),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    );
                  });
            },
          ),
        ));
  }
}
