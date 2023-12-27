import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarket.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_menu_item.dart';

class MenuSlider extends StatefulWidget {
  const MenuSlider({super.key});

  @override
  State<MenuSlider> createState() => _MenuSliderState();
}

class _MenuSliderState extends State<MenuSlider> {
  // menu slider
  int _currentIndex = 0;

  List<Widget> carouselItems(BuildContext context) {
    final List<Widget> carouselItems = [
      BlocBuilder<DashBoradBloc, DashBoradState>(
        builder: (context, state) {
          if (state.categories.isEmpty) {
            return SizedBox();
          } else {
            return Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            context
                                .read<DashBoradBloc>()
                                .add(CategoryClick(context, 'super-market'));
                          },
                          // imgUrl: 'assets/supermarket.png',
                          child: HomeMenuItem(
                            imgUrl: state.categories[0].image!,
                            menuName: state.categories[0].title!,
                            isAvailable: state.categories[0].status!,
                          ),
                        ),
                        HomeMenuItem(
                          imgUrl: state.categories[1].image!,
                          menuName: state.categories[1].title!,
                          isAvailable: state.categories[1].status!,
                        ),
                        HomeMenuItem(
                          imgUrl: state.categories[2].image!,
                          menuName: state.categories[2].title!,
                          isAvailable: state.categories[2].status!,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeMenuItem(
                          imgUrl: state.categories[3].image!,
                          menuName: state.categories[3].title!,
                          isAvailable: state.categories[3].status!,
                        ),
                        HomeMenuItem(
                          imgUrl: state.categories[4].image!,
                          menuName: state.categories[4].title!,
                          isAvailable: state.categories[4].status!,
                        ),
                        HomeMenuItem(
                          imgUrl: state.categories[5].image!,
                          menuName: state.categories[5].title!,
                          isAvailable: state.categories[5].status!,
                        ),
                      ],
                    )
                  ],
                ));
          }
        },
      ),
      BlocBuilder<DashBoradBloc, DashBoradState>(
        builder: (context, state) {
          if (state.categories.isEmpty) {
            return SizedBox();
          } else {
            return Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeMenuItem(
                          imgUrl: state.categories[6].image!,
                          menuName: state.categories[6].title!,
                          isAvailable: state.categories[6].status!,
                        ),
                        HomeMenuItem(
                          imgUrl: state.categories[7].image!,
                          menuName: state.categories[7].title!,
                          isAvailable: state.categories[7].status!,
                        ),
                        HomeMenuItem(
                          imgUrl: state.categories[8].image!,
                          menuName: state.categories[8].title!,
                          isAvailable: state.categories[8].status!,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeMenuItem(
                          imgUrl: state.categories[9].image!,
                          menuName: state.categories[9].title!,
                          isAvailable: state.categories[9].status!,
                        ),
                        // HomeMenuItem(
                        //   imgUrl: state.categories[10].image!,
                        //   menuName: state.categories[10].title!,
                        // ),
                        // HomeMenuItem(
                        //   imgUrl: state.categories[11].image!,
                        //   menuName: state.categories[11].title!,
                        // ),
                      ],
                    )
                  ],
                ));
          }
        },
      ),
      // Container(
      //     padding: EdgeInsets.all(8),
      //     child: Column(
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             InkWell(
      //               onTap: () {
      //                 Navigator.pushNamed(
      //                     context, Supermarket.routeSupermarket);
      //               },
      //               child: HomeMenuItem(
      //                 imgUrl: 'assets/supermarket.png',
      //                 menuName: 'Supermarket',
      //               ),
      //             ),
      //             HomeMenuItem(
      //               imgUrl: 'assets/foodhub.png',
      //               menuName: 'Foodhub',
      //             ),
      //             HomeMenuItem(
      //               imgUrl: 'assets/maidService.png',
      //               menuName: 'Maid Service',
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: 15.h,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: const [
      //             HomeMenuItem(
      //               imgUrl: 'assets/laundry.png',
      //               menuName: 'Laundry',
      //             ),
      //             HomeMenuItem(
      //               imgUrl: 'assets/rentCar.png',
      //               menuName: 'Rent A Car',
      //             ),
      //             HomeMenuItem(
      //               imgUrl: 'assets/giftAndFlower.png',
      //               menuName: 'Gift & Flower',
      //             ),
      //           ],
      //         )
      //       ],
      //     )),
    ];
    return carouselItems;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          CarouselSlider(
            items: carouselItems(context),
            options: CarouselOptions(
                // autoPlay: true,
                aspectRatio: 16 / 10,
                viewportFraction: 1,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                }),
          ),
          AnimatedSmoothIndicator(
            effect: const SlideEffect(
                spacing: 8.0,
                radius: 10.0,
                dotWidth: 10.0,
                dotHeight: 10.0,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Colors.orange),
            activeIndex: _currentIndex,
            count: 2,
          ),
        ],
      ),
    );
  }
}
