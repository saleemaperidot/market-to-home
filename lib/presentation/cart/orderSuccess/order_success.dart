import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/cart/order/bloc/order_bloc.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';
import 'package:market_2_home/presentation/home_container.dart';

import '../../commonWidgets/order_details_singlecard.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  static const routeOrderSuccess = 'routeOrderSuccess';

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OrderBloc>(context).add(WebViewLoaderVisiblityON());
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Success'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
          child: Container(
        // color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/OrderSucces.png',
              height: 250.h,
              width: 250.w,
            ),
            const Text(
              'You have successfully ordered an order',
              style: TextStyle(color: Color.fromARGB(255, 39, 176, 110)),
            ),
            const Text('Please see the order details below'),
            SizedBox(
              height: 6.h,
            ),
            InkWell(
                onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    HomeContainer.routeHomeContainer, (route) => false),
                child: const CustomIconButton(name: 'Continue Shopping')),
            SizedBox(
              height: 16.h,
            ),
            BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                final String invoiceId = state.orderData?.invoiceId ?? '';
                final String orderPlaceTime = state.orderData?.orderTime ?? '';
                final double vat = state.orderData?.vat ?? 0;
                final double orderTotal =
                    state.orderData?.orderFinalAmount ?? 0;

                final String orderId =
                    state.orderData?.orderId.toString() ?? '';
                final String secretKey = state.orderData?.secretKey ?? '';

                return OrderDetailsSingleCard(
                  invoiceId: invoiceId,
                  orderPlaceTime: orderPlaceTime,
                  vat: vat.toString(),
                  orderTotal: orderTotal.toString(),
                  orderId: orderId,
                  secretKey: secretKey,
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
