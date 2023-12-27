import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/cart/order/bloc/order_bloc.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/home_container.dart';

class OrderFailure extends StatelessWidget {
  const OrderFailure({super.key});

  static const routeOrderFailure = 'routeOrderFailure';

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OrderBloc>(context).add(WebViewLoaderVisiblityON());
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Failed'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GapSpacer(
              height: 40.h,
            ),
            Image.asset(
              'assets/orderFailed.png',
              height: 100.h,
              width: 100.w,
            ),
            GapSpacer(
              height: 20.h,
            ),
            const Text(
              'Your Order Has Failed',
              style: TextStyle(
                  color: Color.fromARGB(255, 239, 58, 58),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            GapSpacer(
              height: 6.h,
            ),
            const Text('Unstable connection or payment issue'),
            GapSpacer(
              height: 40.h,
            ),
            InkWell(
                onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    HomeContainer.routeHomeContainer, (route) => false),
                child: const CustomIconButton(name: 'Try Again')),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      )),
    );
  }
}
