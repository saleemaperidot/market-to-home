import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

import 'package:market_2_home/presentation/search/search.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

// static void toastMessage(String message) {
//   Fluttertoast.showToast(
//     msg: message,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.TOP,
//     backgroundColor: Colors.red,
//     textColor: Colors.white,
//     fontSize: 16.0,
//     timeInSecForIosWeb: 1,
//   );
// }

toast(BuildContext context, String message,
    {MotionToastPosition position = MotionToastPosition.top}) {
  MotionToast(
    icon: Icons.error,
    primaryColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
    // title: Text("Custom Toast"),
    description: Text(message),
    layoutOrientation: ToastOrientation.ltr,
    position: MotionToastPosition.top,
    animationType: AnimationType.fromLeft,
    dismissable: true,

    width: 250,
    height: 50,
  ).show(context);
}

void openBottomScreen(BuildContext context) {
  Navigator.of(context).push(PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return SearchScreen();
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      var offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  ));
}

showToast(BuildContext context, String message) {
  FToast fToast = FToast();
  fToast.removeCustomToast();

  // if you want to use context from globally instead of content we need to pass navigatorKey.currentContext!
  fToast.init(context);
  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          offset: Offset(0.0, 0.0),
          blurRadius: 5.0,
        )
      ],
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.grey[100],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.check,
          color: Colors.orange[700],
        ),
        SizedBox(
          width: 12.0,
        ),
        Text(
          message,
          // style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );

  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: Duration(seconds: 2),
  );

  // Custom Toast Position
  // fToast.showToast(
  //     child: toast,
  //     toastDuration: Duration(seconds: 2),
  //     positionedToastBuilder: (context, child) {
  //       return Positioned(
  //         child: child,
  //         right: 0,
  //         left: 0,
  //       );
  //     });
}

void showCustomDialogLoader(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Text('Cancelling...'),
            ],
          ),
        ),
      );
    },
  );
}
