import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart';
import 'package:market_2_home/domain/profile/wallet_data_model/datum.dart';
import 'package:market_2_home/presentation/cart/checkout/checkout.dart';
import 'package:market_2_home/presentation/commonWidgets/key_value_row.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/home/home.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  static const routeMyWallet = 'routeMyWallet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('My Wallet'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(15.0.h),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            int walletPoint = state.walletDetails?.walletData?.balance ?? 0;
            String walletNumber =
                state.walletDetails?.walletData?.walletNumber ?? '';
            List<TransationListData> transationList =
                state.walletDetails?.walletData?.transactions?.data ?? [];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'M2H Wallet',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                GapSpacer(
                  height: 2.h,
                ),
                Text('Redeem your Wallet credit on your next purchase'),
                GapSpacer(
                  height: 10.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Total Point',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '$walletPoint pts',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GapSpacer(
                  height: 15.h,
                ),
                Stack(
                  children: [
                    Container(
                      height: 200.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/walletCard.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                        bottom: 30,
                        left: 30.w,
                        child: Text(
                          addSpaces(walletNumber, 4),
                          style: TextStyle(fontSize: 16.sp),
                        ))
                  ],
                ),
                GapSpacer(
                  height: 6.h,
                ),
                LeftHeader(header: 'Transactions'),
                GapSpacer(
                  height: 4.h,
                ),
                Container(
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
                    padding: EdgeInsets.all(20.0),
                    child: IgnorePointer(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          String dateAndTime =
                              transationList[index].reflectOn ?? '';
                          String description =
                              transationList[index].description ?? '';
                          String amount =
                              transationList[index].amount?.toString() ?? '';
                          String type = transationList[index].type ?? '';
                          return WalletTransactionCard(
                            dateAndTime: dateAndTime,
                            description: description,
                            points: amount,
                            type: type,
                          );
                        },
                        separatorBuilder: (context, index) => CustomDivider(),
                        itemCount: transationList.length,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      )),
    );
  }

  String addSpaces(String input, int chunkSize) {
    // Initialize an empty list to hold the chunks
    List<String> chunks = [];

    // Split the input string into chunks of the specified size
    for (int i = 0; i < input.length; i += chunkSize) {
      chunks.add(input.substring(i, i + chunkSize));
    }

    // Join the chunks with spaces
    String spacedString = chunks.join(" ");

    return spacedString;
  }
}

class WalletTransactionCard extends StatelessWidget {
  final String dateAndTime;
  final String description;
  final String points;
  final String type;

  const WalletTransactionCard({
    Key? key,
    required this.dateAndTime,
    required this.description,
    required this.points,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          KeyValueRow(keys: 'Created', value: dateAndTime),
          KeyValueRow(keys: 'Details', value: description),
          KeyValueRow(
              keys: 'Points',
              value: type == 'credit' ? '$points+' : '$points-'),
        ],
      ),
    );
  }
}
