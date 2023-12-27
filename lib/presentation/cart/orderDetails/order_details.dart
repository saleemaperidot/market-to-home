import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart';
import 'package:market_2_home/domain/home/supermarket/vendorProductDetails/vendor_product_details/review.dart';
import 'package:market_2_home/domain/profile/get_order_details_model/isReturned.dart';
import 'package:market_2_home/presentation/cart/checkout/checkout.dart';
import 'package:market_2_home/presentation/cart/orderDetails/widgets/returnOptionDialog.dart';
import 'package:market_2_home/presentation/cart/review/review.dart';
import 'package:market_2_home/presentation/cart/widgets/small_price_row.dart';
import 'package:market_2_home/presentation/commonWidgets/background_card.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/home/home.dart';

import '../../commonWidgets/components.dart';
import '../../commonWidgets/custom_button.dart';
import '../../commonWidgets/image_card.dart';

import '../checkout/widgets/checkout_price_card.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  static const String routeOrderDetails = 'routeOrderDetails';

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              final int orderId = state.orderDetails?.data?.orderId ?? 0;
              final String secretKey =
                  state.orderDetails?.data?.secretKey ?? '';
              final String orderDate =
                  state.orderDetails?.data?.orderedOn ?? '';
              final String invoiceId =
                  state.orderDetails?.data?.invoiceId ?? '';
              final double orderTotal =
                  state.orderDetails?.data?.orderSubTotal ?? 0;
              final double grandTotal =
                  state.orderDetails?.data?.orderFinalAmount ?? 0;
              final double cancelledAmount =
                  state.orderDetails?.data?.cancelledAmount ?? 0;
              final double vat = state.orderDetails?.data?.vat ?? 0;

              final double discount =
                  state.orderDetails?.data?.orderCouponDiscount ?? 0;
              final String paymentMode =
                  state.orderDetails?.data?.paymentMethod ?? "";
              final String paymentStatus =
                  state.orderDetails?.data?.paymentStatus ?? "";

              final String customerName =
                  state.orderDetails?.data?.address?.billingName ?? "";
              final String customerAddress =
                  state.orderDetails?.data?.address?.billingAddress ?? "";

              final bool isCancellable =
                  state.orderDetails?.data?.isCancellable ?? false;

              return BlocListener<ProfileBloc, ProfileState>(
                listener: (context, state) {
                  if (state.isLoading) {
                    showCustomDialogLoader(context);
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                child: Column(
                  children: [
                    BackgroundCard(
                        padding: 0.h,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 10.h, left: 10.h, right: 10.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Order Details',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Text('Invoice No',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700))
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.h, right: 10.h, bottom: 10.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text(orderDate), Text(invoiceId)],
                              ),
                            ),
                            BackgroundCard(
                                padding: 0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(15.0.h),
                                      child: ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: state.orderDetails!.data!
                                              .products!.length,
                                          itemBuilder: ((context, index) {
                                            final String productName = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .productName ??
                                                '';

                                            final String productCategoies =
                                                state
                                                        .orderDetails!
                                                        .data!
                                                        .products?[index]
                                                        .mainCategory ??
                                                    '';

                                            final String vendorName = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .vendor ??
                                                '';

                                            final String imageUrl = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .productImage ??
                                                '';

                                            final String barcode = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .productBarcode ??
                                                '';

                                            final int quantity = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .productQuantity ??
                                                0;

                                            final double singlePrice = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .productPrice
                                                    ?.toDouble() ??
                                                0;
                                            final int productId = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .orderProductId ??
                                                0;

                                            final String orderStatus = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .orderStatus ??
                                                '';
                                            final bool isCancellable = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .isCancellable ??
                                                false;

                                            final String? isCancellebleDate =
                                                state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .cancelledDate;

                                            final String?
                                                substituteProductBarcode = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .substituteProductData
                                                    ?.substituteProductBarcode;
                                            final String?
                                                substituteProductImage = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .substituteProductData
                                                    ?.substituteProductImage;

                                            final String?
                                                substituteProductName = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .substituteProductData
                                                    ?.substituteProductName;

                                            final int? substituteProductId =
                                                state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .substituteProductData
                                                    ?.substituteProductId;

                                            final double?
                                                substituteProductPrice = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .substituteProductData
                                                    ?.substituteProductPrice;

                                            final bool returnable = state
                                                    .orderDetails!
                                                    .data!
                                                    .products?[index]
                                                    .returnable ??
                                                false;

                                            final IsReturned? isReturned = state
                                                .orderDetails!
                                                .data!
                                                .products?[index]
                                                .is_returned;

                                            return OrderDetailsProductCard(
                                              isCancellable: isCancellable,
                                              productId: productId,
                                              imgUrl: imageUrl,
                                              productName: productName,
                                              category: productCategoies,
                                              vendorName: vendorName,
                                              barcode: barcode,
                                              quantity: quantity,
                                              singePrice: singlePrice,
                                              orderStatus: orderStatus,
                                              isCancellableDate:
                                                  isCancellebleDate,
                                              returanable: returnable,
                                              isReturned: isReturned,
                                              substituteProductBarcode:
                                                  substituteProductBarcode,
                                              substituteProductImage:
                                                  substituteProductImage,
                                              substituteProductName:
                                                  substituteProductName,
                                              substituteProductPrice:
                                                  substituteProductPrice,
                                              substituteProductid:
                                                  substituteProductId,
                                            );
                                          })),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Shipment To",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                    ),
                                    BackgroundCard(
                                        padding: 0,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(customerName,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 18.sp)),
                                                  Text(customerAddress),
                                                  SizedBox(
                                                    height: 6.h,
                                                  ),
                                                  // Text('+971 562962699'),
                                                ],
                                              ),
                                            ),
                                            BackgroundCard(
                                                child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 4.h,
                                                      horizontal: 10.w),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Payment Mode :  ',
                                                        style: TextStyle(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Text(paymentMode,
                                                          style: TextStyle(
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 4.h,
                                                      horizontal: 10.w),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Payment Status :  ',
                                                        style: TextStyle(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Text(paymentStatus,
                                                          style: TextStyle(
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 6.h,
                                                ),
                                                LeftHeader(
                                                    header: 'Order Summary'),
                                                Divider(
                                                  thickness: 2.h,
                                                  color: Colors.black54,
                                                ),
                                                CheckoutPriceCard(
                                                    title: 'Order Total',
                                                    price:
                                                        '${orderTotal.toString()} AED'),
                                                CheckoutPriceCard(
                                                    title: 'VAT(5%)',
                                                    price:
                                                        '${vat.toString()} AED'),
                                                if (discount != 0)
                                                  CheckoutPriceCard(
                                                      color: Colors.red,
                                                      title: 'Discount',
                                                      price: '- $discount AED'),
                                                if (cancelledAmount != 0)
                                                  CheckoutPriceCard(
                                                      color: Colors.red,
                                                      title: 'Cancelled Amount',
                                                      price:
                                                          '- ${cancelledAmount.toString()} AED'),
                                                CheckoutPriceCard(
                                                    title: 'Grand Total',
                                                    price:
                                                        '${grandTotal.toString()} AED'),
                                              ],
                                            ))
                                          ],
                                        ))
                                  ],
                                ))
                          ],
                        )),
                    GapSpacer(
                      height: 12.h,
                    ),
                    if (isCancellable)
                      InkWell(
                        onTap: () => BlocProvider.of<ProfileBloc>(context).add(
                            CancelOrder(
                                context, orderId.toString(), secretKey)),
                        child: Container(
                          child: Text(
                            'Cancel Order',
                            style: TextStyle(color: Colors.white),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red[600]),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class OrderDetailsProductCard extends StatelessWidget {
  final int productId;
  final String imgUrl;
  final String productName;
  final String category;
  final String vendorName;
  final String barcode;
  final int quantity;
  final double singePrice;
  final String orderStatus;
  final bool isCancellable;
  final String? isCancellableDate;
  final String? substituteProductBarcode;
  final String? substituteProductImage;
  final String? substituteProductName;
  final int? substituteProductid;
  final double? substituteProductPrice;
  final bool returanable;
  final IsReturned? isReturned;

  const OrderDetailsProductCard({
    super.key,
    required this.productId,
    this.isCancellableDate,
    required this.imgUrl,
    required this.productName,
    required this.category,
    required this.vendorName,
    required this.barcode,
    required this.quantity,
    required this.singePrice,
    required this.orderStatus,
    required this.isCancellable,
    required this.returanable,
    this.substituteProductBarcode,
    this.substituteProductImage,
    this.substituteProductName,
    this.substituteProductid,
    this.substituteProductPrice,
    this.isReturned,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageCard(
            imageUrl: imgUrl,
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  productName,
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
                ),
                Text(
                  '($category)',
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Vendor : $vendorName',
                        style: TextStyle(fontSize: 12.sp),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Barcode : $barcode',
                  style: TextStyle(fontSize: 12.sp),
                ),
                Text(
                  'Qty : $quantity',
                  style: TextStyle(fontSize: 14.sp),
                ),
              ],
            ),
          )
        ],
      ),
      SizedBox(
        height: 14.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallPriceRow(title: 'Price', price: '$singePrice'),
              SmallPriceRow(
                  title: 'Sub Total', price: '${singePrice * quantity}')
            ],
          ),
          Column(
            children: [
              if (isCancellableDate == null && isCancellable)
                InkWell(
                  onTap: () => BlocProvider.of<ProfileBloc>(context)
                      .add(CancelItem(context, productId.toString())),
                  child: Container(
                    child: Text(
                      'Cancel the Item',
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red[600]),
                  ),
                ),
              if (returanable)
                BlocListener<ProfileBloc, ProfileState>(
                  listener: (context, state) {
                    print(state.returnOptionDialog);
                    if (state.returnOptionDialog) {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return ReturnOptionDialog(
                            productId: productId.toString(),
                          );
                        },
                      );
                    }
                  },
                  child: InkWell(
                    onTap: () => BlocProvider.of<ProfileBloc>(context).add(
                        GetOrderReturnOptions(context, productId.toString())),
                    child: Container(
                      child: Text(
                        'Return',
                        style: TextStyle(color: Colors.white),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red[600]),
                    ),
                  ),
                ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'Status  : ${orderStatus} ',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
      if (substituteProductid != null)
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 16.h,
          ),
          const Text(
            'Substitute Product',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageCard(
                imageUrl: substituteProductImage ?? '',
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      substituteProductName ?? '',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 14.sp),
                    ),
                    Text(
                      '($category)',
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Vendor : $vendorName',
                            style: TextStyle(fontSize: 12.sp),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Barcode : ${substituteProductBarcode ?? ''}',
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    Text(
                      'Qty : $quantity',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 14.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallPriceRow(
                      title: 'Price', price: '$substituteProductPrice'),
                  // SmallPriceRow(
                  //     title: 'Sub Total', price: '${singePrice * quantity}')
                ],
              ),
            ],
          ),
        ]),
      GapSpacer(
        height: 15.h,
      ),
      if (orderStatus == 'Delivered')
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReviewPage(
                        endpoint: 'product',
                        orderProductId: productId.toString())),
              ),
              child: const ReviewButtons(
                name: 'Review Product',
                textColor: Colors.white,
                buttonColor: Colors.orange,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReviewPage(
                        endpoint: 'seller',
                        orderProductId: productId.toString())),
              ),
              child: const ReviewButtons(
                name: 'Review Seller',
                textColor: Colors.black,
                buttonColor: Colors.white,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReviewPage(
                        endpoint: 'delivery',
                        orderProductId: productId.toString())),
              ),
              child: const ReviewButtons(
                name: 'Review Delivery',
                textColor: Colors.black,
                buttonColor: Colors.white,
              ),
            ),
          ],
        ),
      const CustomDivider(),
    ]);
  }
}

class ReviewButtons extends StatelessWidget {
  final String name;
  final Color buttonColor;
  final Color textColor;
  const ReviewButtons({
    super.key,
    required this.name,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 206, 198, 198).withOpacity(0.6),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 226, 206, 206).withOpacity(1),
            buttonColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.center,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: SizedBox(
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: textColor,
              fontSize: 10.sp,
            ),
          ),
        ),
      ),
    );
  }
}
