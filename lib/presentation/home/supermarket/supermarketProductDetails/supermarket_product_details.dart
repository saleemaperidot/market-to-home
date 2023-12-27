import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/wishList/wishlist.dart';

import '../../../../application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import '../../../cart/cart.dart';
import '../../../commonWidgets/custom_app_bar.dart';
import '../../../commonWidgets/screen_arguments.dart';

class SupermarketProductDetails extends StatefulWidget {
  const SupermarketProductDetails({super.key});

  static final supermarketProductDetailsRoute =
      'supermarketProductDetailsRoute';

  @override
  State<SupermarketProductDetails> createState() =>
      _SupermarketProductDetailsState();
}

class _SupermarketProductDetailsState extends State<SupermarketProductDetails> {
  // final List<Widget> carouselItems = [
  //   // quick_select_item(),
  //   // quick_select_item(),
  //   // quick_select_item(),
  //   Image.asset('assets/apple.jpg'),
  //   Image.asset('assets/apple.jpg'),
  //   Image.asset('assets/apple.jpg')
  // ];

  @override
  Widget build(BuildContext context) {
    ScreenArguments? args =
        ModalRoute.of(context)?.settings.arguments as ScreenArguments?;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            size: 28.r,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 18.w),
            child: CartWishIconAcations(
              onWishListTap: () {
                Navigator.of(context).popAndPushNamed(WishList.routeWishlist);
              },
              onCartTap: () {
                Navigator.of(context).popAndPushNamed(Cart.routeCart);
              },
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: BlocBuilder<VendorProductsBloc, VendorProductsState>(
          builder: (context, state) {
            String image = state.productDetailsData!.productImage!;
            String name = state.productDetailsData!.productName!;
            String vendorName = state.productDetailsData!.vendorName!;
            double price = state.productDetailsData!.productPrice!;
            String description = state.productDetailsData!.productDescr!;
            String quantityType =
                state.productDetailsData!.productQuantityType!;

// this 3 params collecting form product page state
            int quantity = state.productDetailsData!.cartQuantity!;

            int productId = state.productDetailsData!.productId!;

            // bool isFav = state.productDetailsData!.isAddedWishlist!;

// need to complete here and extra parameter is as isAddedWishlist
            bool isFav = state.productDetailsData!.isAddedWishlist!;
            // int productId =
            //     state.productData[int.parse(args.from)].vendorProductId!;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
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
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25.r),
                            bottomRight: Radius.circular(25.r))),
                    child: Stack(
                      children: [
                        Column(children: [
                          // CarouselSlider(
                          //   items: carouselItems,
                          //   options: CarouselOptions(
                          //       autoPlay: true,
                          //       aspectRatio: 15.h / 10.5.w,
                          //       // viewportFraction: 1,
                          //       enlargeCenterPage: true,
                          //       onPageChanged: (index, reason) {
                          //         setState(() {
                          //           _currentIndex = index;
                          //         });
                          //       }),
                          // ),
                          GapSpacer(
                            height: 20.h,
                          ),
                          SizedBox(
                            height: 180.h,
                            child: Hero(
                              tag: image,
                              child: CachedNetworkImage(
                                imageUrl: image,
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) => Center(
                                    child: Icon(
                                  Icons.error,
                                  color: Colors.red,
                                )),
                                imageBuilder: (context, imageProvider) =>
                                    Container(
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
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          // AnimatedSmoothIndicator(
                          //   effect: const SlideEffect(
                          //       spacing: 8.0,
                          //       radius: 10.0,
                          //       dotWidth: 10.0,
                          //       dotHeight: 10.0,
                          //       // strokeWidth: 1.5,
                          //       dotColor: Colors.grey,
                          //       activeDotColor: Colors.orange),
                          //   activeIndex: _currentIndex,
                          //   count: 3,
                          // ),
                          SizedBox(
                            height: 15.h,
                          ),
                        ]),
                        Positioned(
                          bottom: 20.h,
                          right: 20.w,
                          child: isFav
                              ? InkWell(
                                  onTap: () =>
                                      BlocProvider.of<VendorProductsBloc>(
                                              context)
                                          .add(RemoveFromWishListFromDetails(
                                              context, productId.toString())),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 30.r,
                                    color: Colors.red,
                                  ),
                                )
                              : InkWell(
                                  onTap: () =>
                                      BlocProvider.of<VendorProductsBloc>(
                                              context)
                                          .add(AddtoWishListFromDetails(
                                              context, productId.toString())),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 30.r,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                IntrinsicHeight(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: Offset(1.0, 3.0),
                            blurRadius: 3.0,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25.r),
                            bottomRight: Radius.circular(25.r))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 10.h, left: 20.w, right: 20.w, bottom: 20.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    name,
                                    // overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(fontSize: 20.sp),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  quantityType,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'AED ${price.toStringAsFixed(2)}',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                      fontSize: 22.sp,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                            ),
                            SizedBox(height: 14.w),
                            Row(
                              children: [
                                quantity == 0
                                    ? InkWell(
                                        onTap: () =>
                                            BlocProvider.of<VendorProductsBloc>(
                                                    context)
                                                .add(QuantityIncrement(
                                                    context,
                                                    productId.toString(),
                                                    args!.from)),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12.r)),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 4.h, horizontal: 10.w),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 18.h,
                                                width: 18.w,
                                                child: Image.asset(
                                                  'assets/Cart.png',
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Text(
                                                'Add To Cart',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1
                                                    ?.copyWith(
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : CartCounter(
                                        quantityAdd: () => {
                                          BlocProvider.of<VendorProductsBloc>(
                                                  context)
                                              .add(QuantityIncrement(
                                                  context,
                                                  productId.toString(),
                                                  args!.from))
                                        },
                                        quantityRemove: () => {
                                          BlocProvider.of<VendorProductsBloc>(
                                                  context)
                                              .add(QuantityDecrement(
                                                  context,
                                                  productId.toString(),
                                                  args!.from))
                                        },
                                        count: quantity.toString(),
                                      ),
                                SizedBox(width: 12.w),
                                Visibility(
                                  visible: quantity != 0,
                                  child: Text(
                                    'Qty',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                            fontWeight: FontWeight.w100,
                                            fontSize: 18.sp),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                              ],
                            ),
                            SizedBox(height: 16.w),
                            Text(
                              'Sold by :$vendorName',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(fontWeight: FontWeight.w100),
                            )
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Overview',
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        border: Border.all(color: Colors.grey)),
                    child: ListTileTheme(
                      dense: true,
                      horizontalTitleGap: 0.0,
                      minLeadingWidth: 0,
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(

                            // key: Key(index.toString()), //attention
                            initiallyExpanded: true,
                            title: Text(
                              'Product Description',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(25.0),
                                  child: Text(
                                    description,
                                  ))
                            ],
                            onExpansionChanged: ((newState) {
                              // if(newState)
                              //     setState(() {
                              //       Duration(seconds:  20000);
                              //       selected = index;
                              //     });
                              //     else setState(() {
                              //       selected = -1;
                              //     });
                            })),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Review & Rating',
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        border: Border.all(color: Colors.grey)),
                    child: ListTileTheme(
                      dense: true,
                      horizontalTitleGap: 0.0,
                      minLeadingWidth: 0,
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(

                            // key: Key(index.toString()), //attention
                            initiallyExpanded: true,
                            title: Text(
                              'Overall Rating',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            children: <Widget>[
                              Column(
                                children: [
                                  Text(
                                    state.productDetailsData?.ratingData
                                            ?.avgRating ??
                                        '0',
                                    style: TextStyle(
                                        fontSize: 40.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  IgnorePointer(
                                    child: RatingBar.builder(
                                      initialRating: double.parse(state
                                              .productDetailsData
                                              ?.ratingData
                                              ?.avgRating
                                              .toString() ??
                                          '0'),
                                      itemSize: 35.h,
                                      minRating: 1,

                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      // itemPadding:
                                      //     EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      tapOnlyMode: true,
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    'Based On ${state.productDetailsData?.ratingData?.totalReviews ?? '0'} Ratings',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20.sp,
                                        color: Colors.black54),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  ReviewBar(
                                      star: '5',
                                      ratingCount:
                                          '${state.productDetailsData?.ratingData?.individualReviews?.five?.rating ?? '0'}',
                                      ratingBar: state
                                              .productDetailsData
                                              ?.ratingData
                                              ?.individualReviews
                                              ?.five
                                              ?.percentage
                                              ?.toDouble() ??
                                          0),
                                  ReviewBar(
                                      star: '4',
                                      ratingCount:
                                          '${state.productDetailsData?.ratingData?.individualReviews?.four?.rating ?? '0'}',
                                      ratingBar: state
                                              .productDetailsData
                                              ?.ratingData
                                              ?.individualReviews
                                              ?.four
                                              ?.percentage
                                              ?.toDouble() ??
                                          0),
                                  ReviewBar(
                                      star: '3',
                                      ratingCount:
                                          '${state.productDetailsData?.ratingData?.individualReviews?.three?.rating ?? '0'}',
                                      ratingBar: state
                                              .productDetailsData
                                              ?.ratingData
                                              ?.individualReviews
                                              ?.three
                                              ?.percentage
                                              ?.toDouble() ??
                                          0),
                                  ReviewBar(
                                      star: '2',
                                      ratingCount:
                                          '${state.productDetailsData?.ratingData?.individualReviews?.two?.rating ?? '0'}',
                                      ratingBar: state
                                              .productDetailsData
                                              ?.ratingData
                                              ?.individualReviews
                                              ?.two
                                              ?.percentage
                                              ?.toDouble() ??
                                          0),
                                  ReviewBar(
                                      star: '1',
                                      ratingCount:
                                          '${state.productDetailsData?.ratingData?.individualReviews?.one?.rating ?? '0'}',
                                      ratingBar: state
                                              .productDetailsData
                                              ?.ratingData
                                              ?.individualReviews
                                              ?.one
                                              ?.percentage
                                              ?.toDouble() ??
                                          0),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  SizedBox(
                                    height: 80.h,
                                    width: double.infinity,
                                    child: ListView.builder(
                                      itemBuilder: (context, index) {
                                        final String cusotmerName = state
                                                .productDetailsData
                                                ?.ratingData
                                                ?.reviews?[index]
                                                .customerName ??
                                            '';
                                        final String reviewMessage = state
                                                .productDetailsData
                                                ?.ratingData
                                                ?.reviews?[index]
                                                .review ??
                                            '';
                                        final double ratingCount = state
                                                .productDetailsData
                                                ?.ratingData
                                                ?.reviews?[index]
                                                .rating ??
                                            0;

                                        return ReviewCard(
                                          cardColor: index.isEven
                                              ? Colors.grey.shade200
                                              : Colors.white24,
                                          customerName: cusotmerName,
                                          reviewMessage: reviewMessage,
                                          ratingCount: ratingCount,
                                        );
                                      },
                                      itemCount: state.productDetailsData
                                          ?.ratingData?.reviews?.length,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                    'View More',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                ],
                              )
                            ],
                            onExpansionChanged: ((newState) {
                              // if(newState)
                              //     setState(() {
                              //       Duration(seconds:  20000);
                              //       selected = index;
                              //     });
                              //     else setState(() {
                              //       selected = -1;
                              //     });
                            })),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      )),
    );
  }
}

class CartCounter extends StatelessWidget {
  final void Function() quantityAdd;
  final void Function() quantityRemove;
  final String count;
  const CartCounter({
    Key? key,
    required this.quantityAdd,
    required this.quantityRemove,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Colors.grey)),
      child: Row(children: [
        InkWell(
          onTap: quantityRemove,
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            radius: 10.r,
            child: Icon(
              Icons.remove,
              color: Colors.white,
              size: 18.r,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Text(
            count,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18.sp),
          ),
        ),
        InkWell(
          onTap: quantityAdd,
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 54, 147, 57),
            radius: 10.r,
            child: Icon(
              Icons.add,
              size: 18.r,
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final Color cardColor;
  final String customerName;
  final String reviewMessage;
  final double ratingCount;
  const ReviewCard({
    required this.cardColor,
    Key? key,
    required this.customerName,
    required this.reviewMessage,
    required this.ratingCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      padding: EdgeInsets.all(10.h),
      child: ListTile(
        leading: const Padding(
          padding: EdgeInsets.only(right: 14),
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 168, 210, 245),
          ),
        ),
        title: Text(customerName),
        subtitle: Text(reviewMessage),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IgnorePointer(
              child: RatingBar.builder(
                initialRating: ratingCount.toDouble(),
                itemSize: 10.h,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewBar extends StatelessWidget {
  final String star;
  final String ratingCount;
  final double ratingBar;

  const ReviewBar({
    Key? key,
    required this.star,
    required this.ratingCount,
    required this.ratingBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(
                Icons.check_box,
                color: Colors.grey,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                star,
                style: TextStyle(fontSize: 18.sp),
              ),
            ],
          ),
          Icon(
            Icons.star,
            color: Theme.of(context).colorScheme.primary,
          ),
          Stack(
            children: [
              Container(
                height: 10.h,
                width: 180.w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 10.h,
                width: (ratingBar * 180) / 100.w,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          Text(
            '($ratingCount)',
            style: TextStyle(fontSize: 18.sp),
          ),
        ],
      ),
    );
  }
}
