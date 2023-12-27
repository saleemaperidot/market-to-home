import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:market_2_home/application/auth/signInBloc/sing_in_bloc_bloc.dart';
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart';
import 'package:market_2_home/domain/core/shared_pref/shared_pref.dart';
import 'package:market_2_home/firebase_options.dart';
import 'package:market_2_home/presentation/auth/signIn/forgotPassword/forgot_password.dart';
import 'package:market_2_home/presentation/cart/cart.dart';

import 'package:market_2_home/presentation/cart/checkout/checkout.dart';
import 'package:market_2_home/presentation/cart/orderDetails/order_details.dart';
import 'package:market_2_home/presentation/cart/orderSuccess/order_success.dart';
import 'package:market_2_home/presentation/cart/review/review.dart';
import 'package:market_2_home/presentation/home/mapLocation/addAddress/add_address.dart';
import 'package:market_2_home/presentation/home/mapLocation/map_location.dart';
import 'package:market_2_home/presentation/profile/myAddress/my_address.dart';
import 'package:market_2_home/presentation/profile/myOrder/my_order.dart';
import 'package:market_2_home/presentation/profile/myWallet/my_wallet.dart';

import 'package:market_2_home/presentation/home/supermarket/supermarket.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarketCategory/supermarket_category.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarketProductDetails/supermarket_product_details.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarketProducts/supermarket_products.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarketSubCategory/supermarket_sub_category.dart';
import 'package:market_2_home/presentation/home_container.dart';
import 'package:market_2_home/presentation/search/search.dart';
import 'package:market_2_home/presentation/wishList/wishlist.dart';

import 'application/cart/bloc/cart_bloc.dart';
import 'application/cart/order/bloc/order_bloc.dart';
import 'application/home/supermarket/vendor/vendor_bloc.dart';
import 'application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import 'application/profile/bloc/profile_bloc.dart';
import 'domain/core/di/injectable.dart';
import 'domain/core/push_notificatioon_helper.dart';
import 'presentation/auth/auth.dart';

// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     return super.createHttpClient(context)
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // FirebaseMessaging messaging = FirebaseMessaging.instance;

  // await messaging.requestPermission(
  //   alert: true,
  //   announcement: false,
  //   badge: true,
  //   carPlay: false,
  //   criticalAlert: false,
  //   provisional: false,
  //   sound: true,
  // );

  await PushNotificationHelper.fireBaseinitialized();

  await configureInjectable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getit<SingInBlocBloc>()),
        BlocProvider(create: (ctx) => getit<DashBoradBloc>()),
        BlocProvider(create: (ctx) => getit<VendorBloc>()),
        BlocProvider(create: (ctx) => getit<VendorProductsBloc>()),
        BlocProvider(create: (ctx) => getit<CartBloc>()),
        BlocProvider(create: (ctx) => getit<ProfileBloc>()),
        BlocProvider(create: (ctx) => getit<OrderBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => MaterialApp(
          builder: FToastBuilder(),
          debugShowCheckedModeBanner: false,
          routes: {
            Supermarket.routeSupermarket: (context) => Supermarket(),
            HomeContainer.routeHomeContainer: (context) => HomeContainer(),
            SupermarketCategory.routeSupermarketCategory: (context) =>
                const SupermarketCategory(),
            SupermarketProducts.routeSupermarketProducts: (context) =>
                SupermarketProducts(),
            SupermarketProductDetails.supermarketProductDetailsRoute:
                (context) => const SupermarketProductDetails(),
            CheckOut.routeCheckout: ((context) => const CheckOut()),
            OrderSuccess.routeOrderSuccess: (context) => const OrderSuccess(),
            OrderDetails.routeOrderDetails: (context) => const OrderDetails(),
            ReviewPage.routeReview: (context) => ReviewPage(),
            WishList.routeWishlist: (context) => const WishList(),
            Cart.routeCart: (context) => const Cart(),
            MyOrder.routeMyOrder: (context) => const MyOrder(),
            MyAddress.routeMyAddress: (context) => MyAddress(),
            MyWallet.routeMyWallet: (context) => const MyWallet(),
            MapLocation.routeMapLocation: (context) => MapLocation(),
            ForgotPassword.routeForgotPassword: (context) =>
                const ForgotPassword(),
            AddAddress.routeAddAddress: ((context) => AddAddress()),
            Auth.routeAuth: ((context) => const Auth()),
            SupermarketSubCategory.routeSupermarketSubCategory: ((context) =>
                const SupermarketSubCategory()),
            SearchScreen.routeSearch: ((context) => SearchScreen()),
          },
          // onGenerateRoute: (settings) {
          //   return PageRouteBuilder(
          //     pageBuilder: (context, animation, secondaryAnimation) {
          //       Widget page;
          //       // Define your pages based on the settings.name
          //       switch (settings.name) {
          //         case Supermarket.routeSupermarket:
          //           page = Supermarket();
          //           break;
          //         case HomeContainer.routeHomeContainer:
          //           page = const HomeContainer();
          //           break;
          //           case HomeContainer.routeHomeContainer:
          //           page = const HomeContainer();
          //           break;
          //           case SupermarketCategory.routeSupermarketCategory:
          //           page = const HomeContainer();
          //           break;
          //           case HomeContainer.routeHomeContainer:
          //           page = const HomeContainer();
          //           break;
          //           case HomeContainer.routeHomeContainer:
          //           page = const HomeContainer();
          //           break;
          //           case HomeContainer.routeHomeContainer:
          //           page = const HomeContainer();
          //           break;
          //           case HomeContainer.routeHomeContainer:
          //           page = const HomeContainer();
          //           break;
          //           case HomeContainer.routeHomeContainer:
          //           page = const HomeContainer();
          //           break;

          //         default:
          //           page = HomeContainer();
          //         // Add cases for other routes...
          //       }

          //       return FadeTransition(
          //         opacity: animation,
          //         child: page,
          //       );
          //     },
          //   );
          // },
          title: 'Market2Home',
          theme: ThemeData(
            fontFamily: 'Linotte',
            textTheme: const TextTheme(
                subtitle1: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Colors.black87),
                subtitle2: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: Colors.black87),
                labelMedium: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.black87)),
            colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Color(0xFFF68A1E),
              onPrimary: Colors.white,
              secondary: Color(0xFFBBBBBB),
              onSecondary: Color(0xFFEAEAEA),
              error: Color(0xFFF32424),
              onError: Color(0xFFF32424),
              background: Color(0xFFF1F2F3),
              onBackground: Color(0xFFFFFFFF),
              surface: Color(0xFF54B435),
              onSurface: Color(0xFF54B435),
            ),
            // primarySwatch: Colors.orange,
          ),
          home: HomeContainer(),
        ),
      ),
    );
  }
}

// class FirstLoadingWidget extends StatelessWidget {
//   const FirstLoadingWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     BlocProvider.of<SingInBlocBloc>(context).add(const AppInitCheck());
//     return BlocBuilder<SingInBlocBloc, SingInBlocState>(
//       builder: (context, state) {
//         if (state.isLoading) {
//           return const SizedBox.shrink();
//         }
//         if (state.firstLauch) {
//           return MapLocation();
//         } else {
//           return const HomeContainer();
//         }
//       },
//     );
//   }
// }
