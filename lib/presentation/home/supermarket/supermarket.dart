import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/supermarket/vendor/vendor_bloc.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';
import 'package:market_2_home/presentation/commonWidgets/headerBar.dart';
import 'package:market_2_home/presentation/commonWidgets/screen_arguments.dart';
import 'package:market_2_home/presentation/commonWidgets/search_bar.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/home/mapLocation/map_location.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../application/home/dashboard/bloc/dash_borad_bloc.dart';

class Supermarket extends StatefulWidget {
  Supermarket({super.key});

  static const routeSupermarket = '/routeSupermarket';

  @override
  State<Supermarket> createState() => _SupermarketState();
}

class _SupermarketState extends State<Supermarket> {
  // final chipList =[{name:'name',}]
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {

    // });

    log('rebuild');
    return Scaffold(body: SafeArea(
      child: BlocBuilder<VendorBloc, VendorState>(
        builder: (context, state) {
          return Column(
            children: [
              const HeaderBar(
                backButtton: true,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                    onTap: () =>
                        context.read<DashBoradBloc>().add(SearchClick(context)),
                    child: AbsorbPointer(child: const SearchBars())),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
                // child: SizedBox(
                //   height: 22.h,
                //   child: const HeaderChip(
                //     title: 'Supermarket',
                //   ),
                // ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SizedBox(
                  height: 85,
                  child: BlocBuilder<VendorBloc, VendorState>(
                    builder: (context, state) {
                      if (state.vendorFilter.isEmpty) {
                        return const SizedBox.shrink();
                      } else {
                        return ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 12.w,
                                ),
                            itemCount: state.vendorFilter.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return InkWell(
                                onTap: () => context.read<VendorBloc>().add(
                                    GetVendor('super-market',
                                        filter:
                                            state.vendorFilter[index].sortBy!)),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            Color.fromARGB(255, 171, 225, 250),
                                        radius: 25.r,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.network(
                                            state.vendorFilter[index].image!,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        state.vendorFilter[index].title!,
                                        style: TextStyle(fontSize: 12.sp),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }));
                      }
                    },
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<VendorBloc, VendorState>(
                    builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state.vendorList.isEmpty) {
                    return const EmptyVendor();
                  }
                  if (state.isLoading) {
                    return Skeletonizer(
                      containersColor: Colors.grey.shade200,
                      enabled: state.isLoading,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: ((context, index) => const VendorCard(
                            workingStatus: 'dd',
                            image: '',
                            title: 'ansdddfd',
                            rating: 'sdfd',
                            vendorLogo: 'dhhdd')),
                      ),
                    );
                  } else {
                    return ListView.separated(
                        controller: _scrollController
                          ..addListener(() {
                            if (_scrollController.offset ==
                                _scrollController.position.maxScrollExtent) {
                              context
                                  .read<VendorBloc>()
                                  .add(const Init('super-market'));
                            }
                          }),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 10.w,
                            ),
                        itemCount: state.vendorList.length,
                        itemBuilder: ((context, index) {
                          String image =
                              state.vendorList[index].vendorShopImage ?? '';
                          String title =
                              state.vendorList[index].vendorShopName!;
                          String rating =
                              state.vendorList[index].avgRating ?? '';
                          String vendorLogo =
                              state.vendorList[index].vendorLogo ?? '';
                          String workingStauts =
                              state.vendorList[index].workingStatus ?? '';

                          return InkWell(
                            onTap: () {
                              BlocProvider.of<VendorBloc>(context).add(
                                  GetCategories(
                                      context,
                                      state.vendorList[index].vendorUrlCode!,
                                      title));
                            },
                            child: VendorCard(
                              image: image,
                              title: title,
                              rating: rating,
                              vendorLogo: vendorLogo,
                              workingStatus: workingStauts,
                            ),
                          );
                        }));
                  }
                }),
              ),
            ],
          );
        },
      ),
    ));
  }
}

class VendorCard extends StatelessWidget {
  final String image;
  final String title;
  final String rating;
  final String vendorLogo;
  final String workingStatus;
  const VendorCard({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
    required this.vendorLogo,
    required this.workingStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h),
      child: Container(
        height: 130.h,
        width: 60.w,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.fill,
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: Offset(1.0, 2.0),
                blurRadius: 3.0,
              ),
            ],
            borderRadius: BorderRadius.circular(15)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                child: Row(children: [
                  SizedBox(
                    width: 110.w,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                title,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Row(
                                children: [
                                  Text(
                                    rating,
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 16.r,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )
                                ],
                              )
                            ],
                          ),
                          workingStatus != ''
                              ? Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 6),
                                  decoration: BoxDecoration(
                                      color: workingStatus == 'Closed'
                                          ? Colors.red[700]
                                          : Colors.amber[400],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    workingStatus,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.sp),
                                  ),
                                )
                              : SizedBox.shrink()
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                    // image: const DecorationImage(
                    //   image:
                    //       AssetImage('assets/Market2Home.png'),
                    //   fit: BoxFit.cover,
                    // ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: const Offset(1.0, 2.0),
                        blurRadius: 3.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(65))),
                width: 100.w,
                height: 80.w,
                child: Image.network(vendorLogo),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class EmptyVendor extends StatelessWidget {
  const EmptyVendor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/OrderSucces.png',
          height: 250.h,
          width: 200.w,
        ),
        const Text(
          'Our store is currently not available in this Locatiion ',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const Text('We will opening our shops at this location soon'),
        const Text('Look out for more..!!'),
        GapSpacer(
          height: 20.h,
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushNamed(
              MapLocation.routeMapLocation,
              arguments: ScreenArguments('vendorEmpty')),
          child: const CustomIconButton(
            name: 'Change Location',
            icon: Icons.location_on,
          ),
        )
      ],
    );
  }
}
