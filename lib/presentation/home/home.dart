import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart';
import 'package:market_2_home/presentation/core/constant.dart';
import 'package:market_2_home/presentation/home/widgets/menu_slider.dart';
import 'package:market_2_home/presentation/home/widgets/our_service_slider.dart';
import 'package:market_2_home/presentation/home/widgets/quick_select.dart';
import 'package:market_2_home/presentation/search/search.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../commonWidgets/components.dart';
import '../commonWidgets/headerBar.dart';
import '../commonWidgets/search_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DashBoradBloc>(context).add(const Initial());
      log('call');
    });

    return SafeArea(
      bottom: false,
      child: BlocBuilder<DashBoradBloc, DashBoradState>(
        builder: (context, state) {
          // if (state.categories.isEmpty) {
          //   return HomeLoader();
          // }
          return Skeletonizer(
            enabled: state.categories.isEmpty,
            child: ListView(
              children: [
                const HeaderBar(),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                    // height: 450.h,
                    decoration: BoxDecoration(
                        color: mtohwhilte,
                        boxShadow: [
                          BoxShadow(
                            color: mtohblack,
                            offset: const Offset(0.0, 2.0),
                            blurRadius: 4.0,
                          ),
                        ],
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20))),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () => context
                                  .read<DashBoradBloc>()
                                  .add(SearchClick(context)),
                              child: const AbsorbPointer(child: SearchBars())),
                          BlocBuilder<DashBoradBloc, DashBoradState>(
                            builder: (context, state) {
                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 15),
                                height: 100.h,
                                decoration: state.mainBanner.isNotEmpty
                                    ? BoxDecoration(
                                        color: mtohwhilte,
                                        boxShadow: [
                                          BoxShadow(
                                            color: mtohblack,
                                            offset: const Offset(0.0, 2.0),
                                            blurRadius: 4.0,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(
                                            20.0), // Set border radius
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              state.mainBanner[0].image!),
                                          fit: BoxFit.fill,
                                        ))
                                    : null,
                              );
                            },
                          ),
                          // AssetImage('assets/headerBanner.jpg')

                          Text(
                            'Category',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const MenuSlider(),
                          SizedBox(
                            height: 10.h,
                          ),
                          const LeftHeader(
                            header: 'Quick Select',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const QuickSelectSlider(),
                          SizedBox(
                            height: 20.h,
                          ),
                          const LeftHeader(
                            header: 'Our Services',
                          ),
                          OurServiceSlider()
                        ],
                      ),
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}

class HomeLoader extends StatelessWidget {
  const HomeLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView(
        children: [
          const HeaderBar(),
          SizedBox(
            height: 6.h,
          ),
          Container(
              height: 600.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(0.0, 2.0),
                      blurRadius: 4.0,
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20))),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              )),
        ],
      ),
    );
  }
}

class LeftHeader extends StatelessWidget {
  final String header;
  const LeftHeader({
    required this.header,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10.w,
        ),
        Text(
          header,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
