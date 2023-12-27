import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:market_2_home/presentation/category.dart';

import 'package:market_2_home/presentation/home/home.dart';

import 'package:market_2_home/presentation/cart/cart.dart';
import 'package:market_2_home/presentation/profile/profile.dart';
import 'package:market_2_home/presentation/wishList/wishlist.dart';

ValueNotifier bottomNavigationListner = ValueNotifier(0);

class HomeContainer extends StatelessWidget {
  HomeContainer({super.key});
  static const routeHomeContainer = '/routeHomeContainer';

  final screen = <Widget>[
    Home(),
    const Categoroy(),
    const WishList(),
    const Profile(),
    const Cart()
  ];

  final iconList = <IconData>[
    Icons.home,
    Icons.category,
    Icons.favorite,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: ValueListenableBuilder(
          valueListenable: bottomNavigationListner,
          builder: (context, value, _) {
            return screen[bottomNavigationListner.value];
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          bottomNavigationListner.value = 4;
        },
        child: CircleAvatar(
          radius: 24,
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/Cart.png',
              color: Colors.black,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        height: 75,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        activeIndex: bottomNavigationListner.value,
        inactiveColor: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.primary,
        activeColor: const Color.fromARGB(255, 84, 74, 74),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => bottomNavigationListner.value = index,
        //other params
      ),
    );
  }
}
