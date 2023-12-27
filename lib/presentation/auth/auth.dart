import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/auth/signInBloc/sing_in_bloc_bloc.dart';
import 'signIn/sign_in_form.dart';
import 'signup/sign_up_form.dart';
import 'widgets/auth_tab_bar.dart';
import 'widgets/header_image.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  static const routeAuth = 'routeAuth';

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> with TickerProviderStateMixin {
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<SingInBlocBloc, SingInBlocState>(
        builder: (context, state) {
          return Stack(
            children: [
              Column(children: [
                const HeaderImage(),
                SizedBox(
                  height: 50.h,
                ),
                AuthTabBar(tabController: _tabController),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      SingInForm(),
                      SignUpForm(),
                    ],
                  ),
                ),
              ]),
              Visibility(
                visible: state.otpVerifyIsLoading,
                child: Container(
                    color: Colors.black54,
                    height: double.infinity,
                    width: double.infinity,
                    child: const Center(child: CircularProgressIndicator())),
              ),
            ],
          );
        },
      ),
    );
  }
}
