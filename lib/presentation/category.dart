import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/home/home.dart';

import 'commonWidgets/headerBar.dart';
import 'commonWidgets/search_bar.dart';

class Categoroy extends StatelessWidget {
  const Categoroy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<DashBoradBloc, DashBoradState>(
        builder: (context, state) {
          if (state.categories.isEmpty) {
            return HomeLoader();
          } else {
            return Column(children: [
              HeaderBar(),
              SizedBox(
                height: 6.h,
              ),
              Expanded(
                child: Container(
                    // height: 450.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: Offset(0.0, 2.0),
                            blurRadius: 4.0,
                          ),
                        ],
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20))),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () => context
                                  .read<DashBoradBloc>()
                                  .add(SearchClick(context)),
                              child: AbsorbPointer(child: const SearchBars())),
                          GapSpacer(
                            height: 10.h,
                          ),
                          Text(
                            'Category',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          GapSpacer(
                            height: 10.h,
                          ),
                          Expanded(
                            child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 90.w,
                                        childAspectRatio: 1 / 1,
                                        crossAxisSpacing: 22,
                                        mainAxisSpacing: 22),
                                itemCount: state.categories.length,
                                itemBuilder: (BuildContext ctx, index) {
                                  return InkWell(
                                    onTap: () {
                                      if (index == 0) {
                                        context.read<DashBoradBloc>().add(
                                            CategoryClick(
                                                context, 'super-market'));
                                      }
                                    },
                                    child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Container(
                                          width: 85.h,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.4),
                                                  offset: Offset(1.0, 2.0),
                                                  blurRadius: 3.0,
                                                ),
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.network(
                                                  state
                                                      .categories[index].image!,
                                                  height: 50.h,
                                                  width: 50.w,
                                                  fit: BoxFit.contain,
                                                ),
                                                GapSpacer(
                                                  height: 4.h,
                                                ),
                                                Text(
                                                  state
                                                      .categories[index].title!,
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ]),
                                        ),
                                        Visibility(
                                          visible: index != 0,
                                          child: Container(
                                            width: 85.h,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: Colors.black87
                                                    .withOpacity(0.5),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Center(
                                                child: Text(
                                              'Coming soon..',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w900),
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    )),
              )
            ]);
          }
        },
      ),
    );
  }
}
