import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/cart/bloc/cart_bloc.dart';
import 'package:market_2_home/application/cart/order/bloc/order_bloc.dart';
import 'package:market_2_home/domain/core/shared_pref/shared_pref.dart';
import 'package:market_2_home/presentation/cart/widgets/empty_cart.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/home_container.dart';
import 'package:market_2_home/presentation/wishList/wishlist.dart';
import 'package:pinput/pinput.dart';

import '../../application/auth/signInBloc/sing_in_bloc_bloc.dart';
import '../../application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import '../auth/widgets/custom_text_field.dart';
import '../auth/widgets/otp_widget.dart';
import '../commonWidgets/background_card.dart';
import '../commonWidgets/button_loader.dart';
import '../commonWidgets/custom_app_bar.dart';
import '../commonWidgets/custom_button.dart';
import '../commonWidgets/price_show_card.dart';
import '../core/constant.dart';
import 'widgets/small_price_row.dart';
import 'widgets/verticalCounter.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  static const routeCart = 'routeCart';

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    context.read<CartBloc>().add(GetCart(context));
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _referalCodeController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _userNameController.dispose();
    _referalCodeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance?.addPostFrameCallback((_) {

    Widget _roundedCornerDialog(
        BuildContext ctx,
        TextEditingController fullNameContorlleer,
        TextEditingController phoneNumberController,
        TextEditingController emailController,
        TextEditingController referralContorller) {
      return BlocBuilder<SingInBlocBloc, SingInBlocState>(
        builder: (context, state) {
          return Dialog(
            child: IntrinsicHeight(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Text(
                        'Fill up your details',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                    kHeight10,
                    const Padding(
                      padding: EdgeInsets.only(left: 12, bottom: 5),
                      child: Text('Full Name'),
                    ),
                    CustomTextField(
                      controller: fullNameContorlleer,
                      icon: const Icon(
                        Icons.account_circle,
                        color: Colors.grey,
                      ),
                      inputType: TextInputType.name,
                      hint: 'Full Name',
                    ),
                    // kHeight8,
                    // CustomTextField(
                    //   controller: phoneNumberController,
                    //   countryCode: '+971',
                    //   icon: Image(
                    //     image: const AssetImage('assets/uae.png'),
                    //     width: 30.w,
                    //     height: 30.h,
                    //   ),
                    //   inputType: TextInputType.number,
                    //   hint: 'Mobile Number',
                    // ),
                    kHeight10,
                    const Padding(
                      padding: EdgeInsets.only(left: 12, bottom: 5),
                      child: Text('Email'),
                    ),
                    CustomTextField(
                      controller: emailController,
                      icon: const Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      inputType: TextInputType.emailAddress,
                      hint: 'Email',
                    ),
                    kHeight10,
                    const Padding(
                      padding: EdgeInsets.only(left: 12, bottom: 5),
                      child: Text('Referral Code'),
                    ),
                    CustomTextField(
                      controller: referralContorller,
                      icon: const Icon(
                        Icons.groups,
                        color: Colors.grey,
                      ),
                      inputType: TextInputType.visiblePassword,
                      hint: 'Referral Code (Optional)',
                    ),
                    GapSpacer(
                      height: 26.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            BlocProvider.of<CartBloc>(context)
                                .add(CustomerDataUpdate(
                              context,
                              fullNameContorlleer.value.text,
                              emailController.value.text,
                              referralContorller.value.text,
                              phoneNumber: phoneNumberController.value.text,
                            ));
                          },
                          child: SizedBox(
                            height: 35.h,
                            width: 100.w,
                            child: BlocBuilder<CartBloc, CartState>(
                              builder: (context, state) {
                                return state.isLoading
                                    ? const ButtonLoader()
                                    : const CustomButton(
                                        name: 'Confirm ',
                                      );
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    void _scaleDialog(
        BuildContext context,
        TextEditingController fullNameContorlleer,
        TextEditingController phoneNumberController,
        TextEditingController emailController,
        TextEditingController referralContorller) {
      showGeneralDialog(
        context: context,
        barrierDismissible:
            true, // This allows the dialog to be closed by clicking the background
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        pageBuilder: (ctx, a1, a2) {
          return SizedBox();
        },
        transitionBuilder: (ctx, a1, a2, child) {
          var curve = Curves.easeInOut.transform(a1.value);
          return Transform.scale(
            scale: curve,
            child: _roundedCornerDialog(context, fullNameContorlleer,
                phoneNumberController, emailController, referralContorller),
          );
        },
        transitionDuration: const Duration(milliseconds: 200),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: Row(
              children: [
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(WishList.routeWishlist),
                    child: const WishListIcon()),
              ],
            ),
          )
        ],
        elevation: 0,
        title: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return Text('My Cart (${state.cartProductList.length})');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.cartProductList.isEmpty) {
                return const EmptyCart();
              } else {
                return Column(
                  children: [
                    ListView.separated(
                      padding: EdgeInsets.only(bottom: 15.h),
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: 10.h,
                      ),
                      shrinkWrap:
                          true, // Set shrinkWrap to true to avoid height issues
                      itemCount: state.cartProductList
                          .length, // Number of items in the ListView
                      itemBuilder: (BuildContext context, int index) {
                        String image =
                            state.cartProductList[index].productImage!;
                        String title =
                            state.cartProductList[index].productName!;
                        String id =
                            state.cartProductList[index].productId!.toString();
                        String quantity = state
                            .cartProductList[index].productQuantity!
                            .toString();
                        String price = state
                            .cartProductList[index].productPrice!
                            .toString();
                        String totalPrice =
                            state.cartProductList[index].subTotal!.toString();

                        return InkWell(
                          onTap: () =>
                              BlocProvider.of<VendorProductsBloc>(context).add(
                                  GetProductDetails(
                                      context, id.toString(), 'cart')),
                          child: CartProductCard(
                            id: id,
                            image: image,
                            title: title,
                            quantity: quantity,
                            price: price,
                            totalPrice: totalPrice,
                          ),
                        );
                      },
                    ),
                    BlocBuilder<CartBloc, CartState>(
                      builder: (context, state) {
                        if (state.cartData == null) {
                          return const SizedBox.shrink();
                        }
                        String subTotal = state.subTotal;
                        // String cartTotal =
                        //     (state.cartData?.cartTotal ?? 0).toString();
                        String cartTotal = (state.Total ?? 0).toString();
                        String vat = state.vat;
                        return BackgroundCard(
                          child: Column(
                            children: [
                              PriceShowCard(
                                title: 'Sub Total',
                                price: '$subTotal AED',
                              ),
                              // PriceShowCard(
                              //   title: 'Shipping ',
                              //   price: '3.33',
                              // ),
                              PriceShowCard(
                                title: 'Vat',
                                price: '$vat AED',
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: const Divider(
                                  height: 3,
                                  thickness: 2,
                                ),
                              ),
                              PriceShowCard(
                                title: 'Total',
                                price: "$cartTotal AED",
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              InkWell(
                                onTap: () async {
                                  String? email =
                                      await SharedPreferencesManager.getString(
                                          SharedPreferencesManager.email);
                                  print(email);

                                  if (email == null || email == '') {
                                    _scaleDialog(
                                        context,
                                        _userNameController,
                                        _phoneNumberController,
                                        _emailController,
                                        _referalCodeController);
                                  } else {
                                    context
                                        .read<OrderBloc>()
                                        .add(Checkout(context));
                                  }
                                },
                                child: SizedBox(
                                  height: 35.h,
                                  width: 160.w,
                                  child: BlocBuilder<OrderBloc, OrderState>(
                                    builder: (context, state) {
                                      return state.isLoading
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
                                          : const CustomIconButton(
                                              name: 'Continue Checkout',
                                              icon: Icons.credit_card,
                                            );
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              InkWell(
                                onTap: () => Navigator.of(context).pushNamed(
                                    HomeContainer.routeHomeContainer),
                                child: const CustomIconButton(
                                  name: 'Continue Shopping',
                                  icon: Icons.shopping_basket,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 65.h,
                    )
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final String id;
  final String image;
  final String title;
  final String quantity;
  final String price;
  final String totalPrice;
  const CartProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.quantity,
    required this.price,
    required this.totalPrice,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18.r),
                      bottomLeft: Radius.circular(18.r)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 5.0,
                    ),
                  ],
                  // image: const DecorationImage(
                  //   image: AssetImage('assets/apple.jpg'),
                  //   fit: BoxFit.fill,
                  // ),
                ),
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
                        fit: BoxFit.fill,
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 9,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, top: 10.h, bottom: 10.h),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp),
                              ),
                              // Text(
                              //   '1pc',
                              //   style: TextStyle(fontSize: 14.sp),
                              // ),
                              GapSpacer(
                                height: 3.h,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        BlocProvider.of<CartBloc>(context)
                                            .add(SaveForLater(context, id)),
                                    child: Row(
                                      children: [
                                        Card(
                                          elevation: 2,
                                          child: Icon(
                                            Icons.favorite_border,
                                            size: 18.r,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        Text(
                                          'Save',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  GapSpacer(
                                    width: 5.h,
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        BlocProvider.of<CartBloc>(context)
                                            .add(RemoveFromcart(context, id)),
                                    child: Row(
                                      children: [
                                        Card(
                                          elevation: 2,
                                          child: Icon(
                                            Icons.delete_forever_outlined,
                                            size: 18.r,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        Text(
                                          'Remove',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              GapSpacer(
                                height: 5.h,
                              ),
                              SmallPriceRow(
                                title: 'Price',
                                price: price,
                              ),
                              SmallPriceRow(
                                title: 'Total',
                                price: totalPrice,
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              VerticalCounter(
                                count: quantity,
                                quantityAdd: () => {
                                  BlocProvider.of<CartBloc>(context)
                                      .add(CartQuantityIncrement(context, id))
                                },
                                quantityRemove: () => {
                                  BlocProvider.of<CartBloc>(context)
                                      .add(CartQuantityDecrement(context, id))
                                },
                              )
                            ],
                          ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
