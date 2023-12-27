import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/auth/signInBloc/sing_in_bloc_bloc.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
// import 'package:market_2_home/presentation/home_container.dart';
import 'package:pinput/pinput.dart';

// import 'custom_button.dart';

class OtpWidget extends StatefulWidget {
  final String from;

  OtpWidget({
    Key? key,
    required this.from,
  }) : super(key: key);

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    // textStyle: GoogleFonts.poppins(
    //   fontSize: 22,
    //   color: const Color.fromRGBO(30, 60, 87, 1),
    // ),
    decoration: const BoxDecoration(color: Color.fromARGB(255, 240, 232, 232)),
  );

  final cursor = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: 56,
        height: 3,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ],
  );

  final preFilledWidget = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: 56,
        height: 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enter the OTP sent to',
          style: TextStyle(color: Colors.grey),
        ),
        GapSpacer(
          height: 2.h,
        ),
        BlocBuilder<SingInBlocBloc, SingInBlocState>(
          builder: (context, state) {
            return Text('+${state.phoneNumber}');
          },
        ),
        SizedBox(
          height: 12.h,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12, top: 8, bottom: 8),
          child: Pinput(
            length: 6,
            pinAnimationType: PinAnimationType.slide,
            // controller: ,

            // controller: controller,
            // focusNode: focusNode,
            defaultPinTheme: defaultPinTheme,
            showCursor: true,
            cursor: cursor,
            onCompleted: (value) {
              BlocProvider.of<SingInBlocBloc>(context, listen: false)
                  .add(VerifyOtp(context, value));
            },
            preFilledWidget: preFilledWidget,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () =>
                  BlocProvider.of<SingInBlocBloc>(context, listen: false)
                      .add(Back(widget.from)),
              child: const Text(
                '<-Back',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            InkWell(
              onTap: () =>
                  BlocProvider.of<SingInBlocBloc>(context, listen: false)
                      .add(ResendOtp(context)),
              child: const Text(
                'Resend OTP?',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
