import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarketProductDetails/supermarket_product_details.dart';

class ProductListGrid extends StatelessWidget {
  final int productId;
  final String title;
  final String subTitle;
  final String image;
  final double price;
  final bool isFav;
  final int productQuantity;
  const ProductListGrid({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.price,
    required this.productQuantity,
    required this.productId,
    required this.isFav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
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
            borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(children: [
            Expanded(
              flex: 20,
              child: Stack(
                children: [
                  Hero(
                    tag: image,
                    child: CachedNetworkImage(
                      imageUrl: image,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => const Center(
                          child: Icon(
                        Icons.error,
                        color: Colors.red,
                      )),
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.contain,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            // Container(
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(10),
                            //     color: Colors.white,
                            //     boxShadow: [
                            //       BoxShadow(
                            //         color: Colors.black.withOpacity(0.4),
                            //         offset: const Offset(1.0, 2.0),
                            //         blurRadius: 3.0,
                            //       ),
                            //     ],
                            //   ),
                            //   child: const Padding(
                            //     padding: EdgeInsets.all(4.0),
                            //     child: Icon(
                            //       Icons.remove_red_eye,
                            //       size: 12,
                            //       color: Colors.grey,
                            //     ),
                            //   ),
                            // ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    offset: const Offset(1.0, 2.0),
                                    blurRadius: 3.0,
                                  ),
                                ],
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: isFav
                                      ? InkWell(
                                          onTap: () => BlocProvider.of<
                                                  VendorProductsBloc>(context)
                                              .add(RemoveFromWishList(context,
                                                  productId.toString())),
                                          child: Icon(
                                            Icons.favorite,
                                            size: 16.r,
                                            color: Colors.red,
                                          ),
                                        )
                                      : InkWell(
                                          onTap: () => BlocProvider.of<
                                                  VendorProductsBloc>(context)
                                              .add(AddToWishList(
                                                  productId.toString(),
                                                  context)),
                                          child: Icon(
                                            Icons.favorite_border,
                                            size: 16.r,
                                            color: Colors.grey,
                                          ),
                                        )),
                            ),
                          ],
                        ),
                        productQuantity == 0
                            ? InkWell(
                                onTap: () =>
                                    BlocProvider.of<VendorProductsBloc>(context)
                                        .add(QuantityIncrement(context,
                                            productId.toString(), 'product')),
                                child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 54, 147, 57),
                                  radius: 12.r,
                                  child: Icon(
                                    Icons.add,
                                    size: 12.r,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : CartCounter(
                                quantityAdd: () => {
                                  log('prseed'),
                                  BlocProvider.of<VendorProductsBloc>(context)
                                      .add(QuantityIncrement(context,
                                          productId.toString(), 'product'))
                                },
                                quantityRemove: () => {
                                  BlocProvider.of<VendorProductsBloc>(context)
                                      .add(QuantityDecrement(context,
                                          productId.toString(), 'product'))
                                },
                                count: productQuantity.toString(),
                              )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 11,
              child: Container(
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black87,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Text(
                            subTitle,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'AED $price',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              width: 6,
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
