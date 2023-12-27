import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart';

class OurServiceSlider extends StatelessWidget {
  OurServiceSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 200.h,
      child: BlocBuilder<DashBoradBloc, DashBoradState>(
        builder: (context, state) {
          if (state.services.isEmpty) {
            return const SizedBox.shrink();
          } else {
            return ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: state.services.length,
                separatorBuilder: (context, index) => SizedBox(
                      width: 15.w,
                    ),
                itemBuilder: ((context, index) {
                  return Container(
                    width: 120.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(0.0, 2.0),
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius:
                          BorderRadius.circular(20.0), // Set border radius
                      image: DecorationImage(
                        image: NetworkImage(state.services[index].image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }));
          }
        },
      ),
    );
  }
}
