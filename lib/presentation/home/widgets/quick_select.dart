import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart';
import 'package:market_2_home/presentation/home/widgets/quick_select_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QuickSelectSlider extends StatefulWidget {
  const QuickSelectSlider({super.key});

  @override
  State<QuickSelectSlider> createState() => _QuickSelectSliderState();
}

class _QuickSelectSliderState extends State<QuickSelectSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashBoradBloc, DashBoradState>(
      builder: (context, state) {
        return SizedBox(
          child: Column(
            children: [
              CarouselSlider(
                items: state.middleBanners
                    .map((e) => QuickSelectItem(image: e.image!))
                    .toList(),
                options: CarouselOptions(
                    autoPlay: state.middleBanners.length != 1,
                    aspectRatio: 16 / 5.3,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    }),
              ),
              SizedBox(
                height: 10.h,
              ),
              state.middleBanners.length != 1
                  ? AnimatedSmoothIndicator(
                      effect: const SlideEffect(
                          spacing: 8.0,
                          radius: 4.0,
                          dotWidth: 20.0,
                          dotHeight: 3.0,
                          strokeWidth: 1.5,
                          dotColor: Colors.grey,
                          activeDotColor: Colors.orange),
                      activeIndex: _currentIndex,
                      count: state.middleBanners.length != 1
                          ? state.middleBanners.length
                          : 0,
                    )
                  : SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
