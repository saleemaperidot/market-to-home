import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart';
import 'package:market_2_home/presentation/commonWidgets/background_card.dart';

import '../cart/checkout/widgets/checkout_price_card.dart';
import 'custom_icon_button.dart';

class OrderDetailsSingleCard extends StatelessWidget {
  final String invoiceId;
  final String orderPlaceTime;
  final String vat;
  final String orderTotal;
  final String orderId;
  final String secretKey;

  const OrderDetailsSingleCard({
    Key? key,
    required this.invoiceId,
    required this.orderPlaceTime,
    required this.vat,
    required this.orderTotal,
    required this.orderId,
    required this.secretKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: BackgroundCard(
          padding: 0,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(15.r)),
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          'Order Details',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CheckoutPriceCard(
                      title: 'Invoice No',
                      price: invoiceId,
                    ),
                    CheckoutPriceCard(
                      title: 'Order Time',
                      price: orderPlaceTime,
                    ),
                    CheckoutPriceCard(
                      title: 'VAT(5%)',
                      price: vat,
                      aedVisibility: true,
                    ),
                    CheckoutPriceCard(
                      title: 'Grand Total',
                      price: orderTotal,
                      aedVisibility: true,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                        onTap: () => context
                            .read<ProfileBloc>()
                            .add(GetOrderDetails(context, orderId, secretKey)),
                        child: CustomIconButton(name: 'View Order Details'))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
