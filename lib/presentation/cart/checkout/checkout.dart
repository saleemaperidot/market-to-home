import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/cart/order/bloc/order_bloc.dart';
import 'package:market_2_home/presentation/cart/checkout/widgets/coupon_applied_button.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_button.dart';
import 'package:market_2_home/presentation/auth/widgets/custom_text_field.dart';
import 'package:market_2_home/presentation/cart/checkout/widgets/square_box.dart';
import 'package:market_2_home/presentation/cart/widgets/small_price_row.dart';
import 'package:market_2_home/presentation/commonWidgets/background_card.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/home/home.dart';
import 'package:market_2_home/presentation/home/mapLocation/addAddress/add_address.dart';
import 'package:pinput/pinput.dart';

import '../../commonWidgets/image_card.dart';
import 'widgets/checkout_price_card.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  static const String routeCheckout = 'routeCheckout';

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  String selectedOption = 'credit_card';
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text(
                  'Billing Details',
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  if (state.checkoutData?.address == null) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AddAddress(
                                  from: 'checkout',
                                ),
                              ),
                            ),
                            child: const CustomIconButton(
                              name: 'Please Add Delivery Address',
                              icon: Icons.add,
                              color: const Color.fromARGB(255, 164, 195, 220),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  String firstName =
                      state.checkoutData?.address?.firstName ?? '';
                  String lastName = state.checkoutData?.address?.lastName ?? '';
                  String address = state.checkoutData?.address?.address ?? '';
                  String contactNumber =
                      state.checkoutData?.address?.contactNumber.toString() ??
                          '';

                  return BackgroundCard(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${firstName} ${lastName} ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16.sp)),
                      Text('$address'),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text('+971 $contactNumber'),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       'Change',
                      //       style: TextStyle(
                      //         color: Theme.of(context).colorScheme.primary,
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //     )
                      //   ],
                      // )
                    ],
                  ));
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: LeftHeader(header: 'Review Your Order'),
              ),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  String vat = (state.checkoutData?.vat ?? 0).toString();
                  int walletPoint = state.checkoutData?.walletPointEarns ?? 0;
                  String subTotal =
                      (state.checkoutData?.subTotal ?? 0).toString();
                  String orderTotal =
                      (state.checkoutData?.grandTotal ?? 0).toString();
                  String amountToPay = (state.checkoutData?.payableAmount ?? 0)
                      .toStringAsFixed(2);

                  return Container(
                    // Set the desired height for the container
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: Offset(0.0, 0.0),
                            blurRadius: 5.0,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          ListView.separated(
                            padding: EdgeInsets.only(bottom: 15.h),
                            physics: const NeverScrollableScrollPhysics(),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    CustomDivider(),
                            shrinkWrap:
                                true, // Set shrinkWrap to true to avoid height issues
                            itemCount: state.checkoutData?.products?.length ??
                                0, // Number of items in the ListView
                            itemBuilder: (BuildContext context, int index) {
                              String productName = state.checkoutData
                                      ?.products?[index].productName ??
                                  '';

                              int productQuantity = state.checkoutData
                                      ?.products?[index].productQuantity ??
                                  0;

                              double productPrice = state.checkoutData
                                      ?.products?[index].productPrice ??
                                  0;

                              double productSubTotal = state.checkoutData
                                      ?.products?[index].subTotal ??
                                  0;

                              String productImage = state.checkoutData
                                      ?.products?[index].productImage ??
                                  '';

                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: ImageCard(
                                      imageUrl: productImage,
                                    ),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.w,
                                            top: 10.h,
                                            right: 10.w,
                                            bottom: 10.h),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 5,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      productName,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 14.sp),
                                                    ),
                                                    Text(
                                                      '$productQuantity pc',
                                                      style: TextStyle(
                                                          fontSize: 14.sp),
                                                    ),
                                                    SizedBox(
                                                      height: 2.h,
                                                    ),
                                                    Text(
                                                      'Qty : $productQuantity',
                                                      style: TextStyle(
                                                          fontSize: 14.sp),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 5,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          SmallPriceRow(
                                            title: 'Price',
                                            price: '$productPrice',
                                          ),
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                          SmallPriceRow(
                                            title: 'Total',
                                            price: '$productSubTotal',
                                          )
                                        ],
                                      ))
                                ],
                              );
                            },
                          ),
                          CheckoutPriceCard(
                            title: 'Sub Total',
                            price: '$subTotal AED',
                          ),
                          // CheckoutPriceCard(
                          //   title: 'Shipping ',
                          //   price: '3.33',
                          // ),
                          CheckoutPriceCard(
                            title: 'Vat',
                            price: '$vat AED',
                          ),
                          CheckoutPriceCard(
                            title: 'Order Total',
                            price: '$orderTotal AED',
                          ),
                          Visibility(
                            visible: state.discount != 0,
                            child: CheckoutPriceCard(
                              title: 'Discount',
                              price: '- ${state.discount.toString()} AED',
                              color: Colors.red,
                            ),
                          ),
                          CheckoutPriceCard(
                            title: 'Amount To Pay',
                            price: '${amountToPay} AED',
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          CustomDivider(),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.r),
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 1.h,
                                )),
                            child: IntrinsicWidth(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'You will earn',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      ' $walletPoint Pts ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    Text(
                                      'From This order !!',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  controller.setText(state.couponCode);

                  return Visibility(
                    visible: state.redeemCoupenVisiblity,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, bottom: 6.h),
                          child: const LeftHeader(header: 'Redeem Coupon'),
                        ),
                        Stack(
                          children: [
                            CustomTextField(
                              inputType: TextInputType.text,
                              hint: 'Coupon Code',
                              controller: controller,
                              isEnable: state.couponCode.isEmpty,
                            ),
                            Positioned(
                                right: 0,
                                bottom: 0,
                                top: 0,
                                child: Padding(
                                    padding: EdgeInsets.all(4),
                                    // child: CustomButton(name: 'Apply Coupon')))
                                    child: state.couponCode.isNotEmpty
                                        ? CouponAppliedButton(
                                            name: 'Coupon Applied')
                                        : InkWell(
                                            onTap: () => BlocProvider.of<
                                                    OrderBloc>(context)
                                                .add(ApplyCoupon(
                                                    context, controller.text)),
                                            child: CustomButton(
                                                name: 'Apply Coupon'))))
                          ],
                        ),
                        GapSpacer(
                          height: 15.h,
                        ),
                        BlocBuilder<OrderBloc, OrderState>(
                          builder: (context, state) {
                            return !state.couponListTestVisiblity
                                ? Center(
                                    child: InkWell(
                                    onTap: () =>
                                        BlocProvider.of<OrderBloc>(context)
                                            .add(CouponVisibility()),
                                    child: Text(
                                      'Available Coupon',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          decoration: TextDecoration.underline,
                                          fontSize: 16.sp),
                                    ),
                                  ))
                                : SizedBox.shrink();
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              GapSpacer(
                height: 15.h,
              ),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  return Visibility(
                    visible: state.couponVisiblity,
                    child: Container(
                      // Set the desired height for the container
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: Offset(0.0, 0.0),
                              blurRadius: 5.0,
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.abc),
                                Text(
                                  'Available Coupon',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp),
                                )
                              ],
                            ),
                          ),
                          BlocBuilder<OrderBloc, OrderState>(
                            builder: (context, state) {
                              return ListView.builder(
                                padding: EdgeInsets.only(bottom: 15.h),
                                physics: const NeverScrollableScrollPhysics(),

                                shrinkWrap:
                                    true, // Set shrinkWrap to true to avoid height issues
                                itemCount: state.checkoutData?.availableCoupons
                                        ?.length ??
                                    0, // Number of items in the ListView
                                itemBuilder: (BuildContext context, int index) {
                                  String code = state
                                          .checkoutData
                                          ?.availableCoupons?[index]
                                          .couponCode ??
                                      '';

                                  String description = state
                                          .checkoutData
                                          ?.availableCoupons?[index]
                                          .description ??
                                      '';

                                  //  String expiryDate = state
                                  //     .checkoutData!
                                  //     .availableCoupons![index]
                                  //     . ??
                                  // '';

                                  return CouponCard(
                                    index: index,
                                    code: code,
                                    description: description,
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  // double m2hCreditBalanceAvailable =
                  //     state.checkoutData!.walletDetails!.balance ?? 0.0;

                  // print(state.checkoutData!.walletDetails!.isActive == 1);
                  // print(!state.couponListTestVisiblity);
                  // print(state.creditPointBalanceAmount != 0);

                  return BackgroundCard(
                      padding: 0,
                      child: Column(
                        children: [
                          Visibility(
                            visible:
                                state.checkoutData!.walletDetails!.isActive ==
                                        1 &&
                                    !state.couponListTestVisiblity &&
                                    state.creditPointBalanceAmount != 0,
                            child: InkWell(
                              onTap: () {
                                BlocProvider.of<OrderBloc>(context).add(
                                    PointRedeem(state.checkoutData!
                                        .walletDetails!.redeemableCurrency!
                                        .toDouble()));
                              },
                              child: ListTile(
                                leading: state.selectCreditPoint
                                    ? Icon(
                                        Icons.check_box,
                                        color: Colors.orange,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        color: Colors.orange,
                                      ),
                                title: Text('Use My M2H Credits'),
                                subtitle: Text(
                                    'Available points ${state.creditPointBalanceAmount}'),
                              ),
                            ),
                          ),
                          state.checkoutData!.payableAmount! != 0
                              ? BackgroundCard(
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 3.h, bottom: 6.h),
                                      child:
                                          LeftHeader(header: 'Payment Method'),
                                    ),
                                    SquareRadioButton<String>(
                                      title: 'Debit / Credit Card',
                                      value: 'credit_card',
                                      groupValue: selectedOption,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value;
                                        });
                                      },
                                    ),
                                    const CustomDivider(
                                      padding: 1,
                                    ),
                                    SquareRadioButton<String>(
                                      title: 'Cash On Delivery',
                                      value: 'cash_on_delivery',
                                      groupValue: selectedOption,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          if (selectedOption ==
                                              'cash_on_delivery') {
                                            context.read<OrderBloc>().add(
                                                PlaceOrderCash(
                                                    context,
                                                    selectedOption,
                                                    state.isWallet.toString()));
                                          } else if (selectedOption ==
                                              'credit_card') {
                                            context.read<OrderBloc>().add(
                                                PlaceOrderCard(
                                                    context,
                                                    selectedOption,
                                                    state.isWallet.toString()));
                                          }
                                        },
                                        child: state.orderLoader
                                            ? Center(
                                                child: SizedBox(
                                                  height: 20.h,
                                                  width: 20.w,
                                                  child:
                                                      const CircularProgressIndicator(
                                                    strokeWidth: 2,
                                                    color: Colors.amber,
                                                  ),
                                                ),
                                              )
                                            : CustomIconButton(
                                                name:
                                                    '${selectedOption == 'cash_on_delivery' ? 'Place Order' : 'Proceed to Card Payment'}'))
                                  ],
                                ))
                              : InkWell(
                                  onTap: () {
                                    context.read<OrderBloc>().add(
                                        PlaceOrderCash(
                                            context,
                                            "cash_on_delivery",
                                            state.isWallet.toString()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child:
                                        CustomIconButton(name: 'Place Order'),
                                  ),
                                )
                        ],
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CouponCard extends StatelessWidget {
  final int index;
  final String code;
  final String description;

  const CouponCard({
    super.key,
    required this.index,
    required this.code,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 18.w),
      color: index.isEven ? Colors.orange.withOpacity(0.2) : Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 8,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
                    child: Text(
                      'CODE',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                    color: Colors.green,
                  ),
                  Container(
                    child: DottedBorder(
                      color: Colors.green, //color of dotted/dash line
                      strokeWidth: 1, //thickness of dash/dots
                      dashPattern: [3, 1],
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 3.h, horizontal: 8.w),
                        child: Text(
                          code,
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 14.sp),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              GapSpacer(
                height: 4.h,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 12.sp),
              ),
              GapSpacer(
                height: 2.h,
              ),
              // Text(
              //   'Expires On 05 july 2022',
              //   style: TextStyle(
              //       fontSize: 10.sp,
              //       color: Theme.of(context).colorScheme.primary),
              // )
            ]),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                InkWell(
                  onTap: () => BlocProvider.of<OrderBloc>(context)
                      .add(ApplyCoupon(context, code)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 4.h, horizontal: 16.w),
                    child: Text(
                      'Apply',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  final double? padding;
  const CustomDivider({
    Key? key,
    this.padding = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding!.h),
      child: Divider(
        thickness: 1.h,
        color: Colors.black54,
      ),
    );
  }
}
