import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart';
import 'package:market_2_home/domain/core/shared_pref/shared_pref.dart';
import 'package:market_2_home/presentation/commonWidgets/screen_arguments.dart';
import 'package:market_2_home/presentation/home/mapLocation/map_location.dart';

class HeaderBar extends StatelessWidget {
  final bool? backButtton;
  const HeaderBar({
    Key? key,
    this.backButtton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            backButtton == true
                ? InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  )
                : SizedBox(
                    child: Image.asset(
                      'assets/Market2Home.png',
                    ),
                    height: 70.h,
                  ),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(
                  MapLocation.routeMapLocation,
                  arguments: ScreenArguments('headerBar')),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 240, 239, 239)),
                child: Row(children: [
                  SizedBox(
                      width: 90.w,
                      child: BlocBuilder<DashBoradBloc, DashBoradState>(
                        builder: (context, state) {
                          return Text(
                            state.addressName == ''
                                ? 'Select Location'
                                : state.addressName,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          );
                        },
                      )),
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
