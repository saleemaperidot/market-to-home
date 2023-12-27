import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart';
import 'package:market_2_home/presentation/commonWidgets/order_details_singlecard.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});
  static const routeMyOrder = 'routeMyOrder';

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const GetOrders());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Order List'),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          // if (state.isLoading) {
          //   return const Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }
          if (state.ordersList.isEmpty) {
            return const Center(
              child: Text('No Orders Yet!!'),
            );
          }

          return ListView.separated(
              itemBuilder: ((context, index) {
                final String invoiceId =
                    state.ordersList[index].invoiceId ?? '';

                final String orderPlaceTime =
                    state.ordersList[index].orderedOn ?? '';

                final double vat = state.ordersList[index].vat ?? 0;

                final double orderTotal =
                    state.ordersList[index].orderFinalAmount ?? 0;

                final String orderId =
                    state.ordersList[index].orderId.toString();

                final secretKey = state.ordersList[index].secretKey ?? '';

                return OrderDetailsSingleCard(
                  invoiceId: invoiceId,
                  orderPlaceTime: orderPlaceTime,
                  vat: vat.toString(),
                  orderTotal: orderTotal.toString(),
                  orderId: orderId,
                  secretKey: secretKey,
                );
              }),
              separatorBuilder: ((context, index) => SizedBox(
                    height: 1.h,
                  )),
              itemCount: state.ordersList.length);
        },
      ),
    );
  }
}
