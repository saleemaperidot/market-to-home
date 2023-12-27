import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:market_2_home/application/cart/order/bloc/order_bloc.dart';
import 'package:market_2_home/domain/cart/order/place_order_online_initiate_model/data.dart';
import 'package:market_2_home/domain/core/constant.dart';
import 'package:market_2_home/presentation/cart/checkout/checkout.dart';
import 'package:market_2_home/presentation/cart/orderPayment/widget/my_will_pop_Scope.dart';
import 'package:market_2_home/presentation/cart/orderSuccess/order_failure.dart';
import 'package:market_2_home/presentation/cart/orderSuccess/order_success.dart';

class WebviewPage extends StatelessWidget {
  WebviewPage({Key? key, this.data}) : super(key: key);
  final OrderOnlineInitiatData? data;

  late InAppWebViewController _webViewController;

  Future<bool> _onWillPop(BuildContext context) async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            //title: new Text('Are you sure?'),
            content: new Text('Do you want to cancel this transaction ?'),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: new Text('No'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  Future<bool> onWillPop() async {
    if (await _webViewController.canGoBack()) {
      await _webViewController.goBack();
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    inspect(data);
    print(data);
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: new Scaffold(
        appBar: AppBar(
          title: Text('Payment'),
        ),
        body: SafeArea(
            child: BlocListener<OrderBloc, OrderState>(
          listener: (context, state) {
            if (state.paymentStatus == 'Success') {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return OrderSuccess();
              }));
            } else if (state.paymentStatus == 'Failure') {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return OrderFailure();
              }));
            } else if (state.paymentStatus == 'Aborted') {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return OrderFailure();
              }));
            } else if (state.paymentStatus == 'Connection Failure') {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return OrderFailure();
              }));
            }

            // TODO: implement listener
          },
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: InAppWebView(
                    initialOptions: InAppWebViewGroupOptions(
                        crossPlatform: InAppWebViewOptions(
                          useShouldOverrideUrlLoading: true,
                          mediaPlaybackRequiresUserGesture: false,
                          javaScriptEnabled: true,
                          javaScriptCanOpenWindowsAutomatically: true,
                        ),
                        android: AndroidInAppWebViewOptions(
                          useWideViewPort: false,
                          useHybridComposition: true,
                          loadWithOverviewMode: true,
                          domStorageEnabled: true,
                        ),
                        ios: IOSInAppWebViewOptions(
                            allowsInlineMediaPlayback: true,
                            enableViewportScale: true,
                            ignoresViewportScaleLimits: true)),
                    initialData: InAppWebViewInitialData(data: _loadHTML()),
                    onWebViewCreated: (InAppWebViewController controller) {
                      _webViewController = controller;
                    },
                    onLoadError: (controller, url, code, message) {
                      print(message);
                    },
                    onLoadStop: (InAppWebViewController controller,
                        Uri? pageUri) async {
                      BlocProvider.of<OrderBloc>(context)
                          .add(WebViewLoaderVisiblityOff());

                      context.read<OrderBloc>().add(GetPaymentStatusResponse(
                          context, data!.orderId.toString()));

                      // print(pageUri.toString());
                      // final page = pageUri.toString();

                      // var html = await controller.evaluateJavascript(
                      //     source: "paymentVerify()");

                      // try {
                      //   // Parse the JSON data obtained from the JavaScript code
                      //   Map<String, dynamic> orderStatus = jsonDecode(html);
                      //   bool isOrderStatusTrue = orderStatus['status'];
                      //   print('Order Status: $isOrderStatusTrue');
                      // } catch (e) {
                      //   print('Error parsing JSON: $e');
                      // }

                      // final parsedJson = parse(html);
                      // final jsonData = parsedJson.body?.text;
                      // controller.clearCache();
                      // final result = jsonDecode(jsonDecode(jsonData!));
                      // print(result.toString());

                      // Check the order status and navigate accordingly
                      // if (true) {
                      //   Navigator.of(context).pushReplacement(
                      //       MaterialPageRoute(builder: (_) {
                      //     return PaymentStatus(resp: html1.toString());
                      //   }));
                      // } else {
                      //   // Handle other cases
                      // }
                    }),
              ),
              (BlocProvider.of<OrderBloc>(context, listen: true)
                      .state
                      .webViewLoader)
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Center(),
            ],
          ),
        )),
      ),
    );
  }

  String _loadHTML() {
    const  url =Apis.ccAvenue_payment_url;
    const command = "initiateTransaction";
    final encRequest = data?.encryptedData;
    final accessCode = data?.accessCode;

    String html =
        "<html> <head><meta name='viewport' content='width=device-width, initial-scale=1.0'></head> <body onload='document.f.submit();'> <form id='f' name='f' method='post' action='$url'>" +
            "<input type='hidden' name='command' value='$command'/>" +
            "<input type='hidden' name='encRequest' value='$encRequest' />" +
            "<input  type='hidden' name='access_code' value='$accessCode' />";
    print(html);
    return html + "</form> </body> </html>";
  }
}
