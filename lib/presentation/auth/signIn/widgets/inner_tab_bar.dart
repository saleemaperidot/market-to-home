import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/presentation/auth/signIn/widgets/signIn_with_email_password.dart';
import 'package:market_2_home/presentation/auth/signIn/widgets/signIn_with_phoneNumber.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';

import '../../../../application/auth/signInBloc/sing_in_bloc_bloc.dart';
import '../../../commonWidgets/button_loader.dart';
import '../../../commonWidgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/otp_widget.dart';

class InnerTabBar extends StatefulWidget {
  const InnerTabBar({
    Key? key,
  }) : super(key: key);

  @override
  State<InnerTabBar> createState() => _InnerTabBarState();
}

class _InnerTabBarState extends State<InnerTabBar>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
    _currentIndex = _tabController.index;

    _tabController.animation?.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController.animation?.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange() {
    setState(() {
      _currentIndex = _tabController.index;
      log(_currentIndex.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin:
              EdgeInsets.only(top: 20.h, left: 35.w, right: 35.w, bottom: 20.h),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0.0, 2.0),
                  blurRadius: 4.0,
                ),
              ],
            ),
            height: 22.h,
            child: TabBar(
              automaticIndicatorColorAdjustment: false,
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.white,
              indicator: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0.0, 2.0),
                      blurRadius: 4.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              controller: _tabController,
              tabs: [
                Tab(
                  child: Text(
                    'Sign in with OTP',
                    style: TextStyle(fontSize: 11.sp),
                  ),
                ),
                Tab(
                  child: Text(
                    'Sign in with Email',
                    style: TextStyle(fontSize: 11.sp),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: BlocBuilder<SingInBlocBloc, SingInBlocState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        state.loginOtpView == false
                            ? const SignInWithPhoneNumber()
                            : OtpWidget(
                                from: 'loginWithOtp',
                              ),
                      ],
                    );
                  },
                ),
              ),
              // Widget for Tab 2

              SingInWithEmail(),
            ],
          ),
        ),
      ],
    );
  }
}
