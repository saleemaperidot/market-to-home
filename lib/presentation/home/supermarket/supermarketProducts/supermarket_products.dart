import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/cart/bloc/cart_bloc.dart';
import 'package:market_2_home/application/home/supermarket/vendor/vendor_bloc.dart';
import 'package:market_2_home/presentation/commonWidgets/header_chip.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarketCategory/supermarket_category.dart';

import 'package:market_2_home/presentation/home/supermarket/supermarketProducts/widgets/product_list_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import '../../../commonWidgets/cart_bar.dart';
import '../../../commonWidgets/custom_app_bar.dart';

final ScrollController _scrollController = ScrollController();

class SupermarketProducts extends StatelessWidget {
  SupermarketProducts({super.key});

  static const routeSupermarketProducts = '/routeSupermarketProducts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 85.h,
        automaticallyImplyLeading: false,
        flexibleSpace: BlocBuilder<VendorBloc, VendorState>(
          builder: (context, state) {
            return BlocBuilder<VendorProductsBloc, VendorProductsState>(
              builder: (context, productState) {
                return CustomAppBar(
                  shopeName: state.vendorShopName,
                  category: productState.subCategoryName,
                );
              },
            );
          },
        ),
      ),
      body:
          SafeArea(child: BlocBuilder<VendorProductsBloc, VendorProductsState>(
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: BlocBuilder<VendorBloc, VendorState>(
                      builder: (context, state) {
                        return Row(
                          children: [
                            InkWell(
                              onTap: () =>
                                  Navigator.of(context).popUntil((route) {
                                return route.settings.name ==
                                    SupermarketCategory
                                        .routeSupermarketCategory;
                              }),
                              child: Column(
                                children: [
                                  Icon(Icons.apps),
                                  Text(
                                    'All Category',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                ],
                              ),
                            ),
                            GapSpacer(
                              width: 6.w,
                            ),
                            Expanded(
                              child: HeaderChip(
                                categoriesList: state.subCategory,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  BlocBuilder<VendorProductsBloc, VendorProductsState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return SizedBox(
                            height: 30.h,
                            width: 30.w,
                            child: CircularProgressIndicator());
                      } else if (state.productData.isEmpty) {
                        return Expanded(
                          child: Center(
                              child: Column(
                            children: [
                              Image.asset('assets/ProductEmpty.png'),
                              Text('Sorry No Products Found..')
                            ],
                          )),
                        );
                      }
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Skeletonizer(
                            enabled: state.isLoading,
                            child: GridView.builder(
                                controller: _scrollController
                                  ..addListener(() {
                                    if (_scrollController.offset ==
                                        _scrollController
                                            .position.maxScrollExtent) {
                                      context.read<VendorProductsBloc>().add(
                                          GetProductsFromScroll(
                                              context,
                                              context
                                                  .read<VendorProductsBloc>()
                                                  .state
                                                  .subCategorySlug));
                                    }
                                  }),
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 300.w,
                                        childAspectRatio: 1.8 / 2,
                                        crossAxisSpacing: 10.w,
                                        mainAxisSpacing: 16.h),
                                itemCount: state.productData.length,
                                itemBuilder: (BuildContext ctx, index) {
                                  String title = state.productData[index]
                                      .productData!.productName!;
                                  String image =
                                      state.productData[index].productImageUrl!;
                                  double price =
                                      state.productData[index].productPrice!;
                                  String subTitle = state.productData[index]
                                      .productData!.productQuantityType!;

                                  int productQuantity =
                                      state.productData[index].cartQuantity;
                                  int productId =
                                      state.productData[index].vendorProductId!;

                                  bool isFav =
                                      state.productData[index].isAddedWishlist;

                                  return InkWell(
                                      onTap: () {
                                        BlocProvider.of<VendorProductsBloc>(
                                                context)
                                            .add(GetProductDetails(
                                                context,
                                                productId.toString(),
                                                'product'));
                                      },
                                      child: ProductListGrid(
                                        productId: productId,
                                        title: title,
                                        subTitle: subTitle,
                                        image: image,
                                        price: price,
                                        productQuantity: productQuantity,
                                        isFav: isFav,
                                      ));
                                }),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              state.isScrollingLoading
                  ? Positioned(
                      bottom: 0,
                      left: 165.w,
                      right: 165.w,
                      child: CircularProgressIndicator())
                  : SizedBox.shrink(),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return state.cartQuantity != 0
                      ? CartBar()
                      : SizedBox.shrink();
                },
              )
            ],
          );
        },
      )),
    );
  }
}
