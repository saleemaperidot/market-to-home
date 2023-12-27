import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/auth/signInBloc/sing_in_bloc_bloc.dart';
import '../../../commonWidgets/button_loader.dart';
import '../../../core/gap_spacer.dart';
import '../../../commonWidgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignInWithPhoneNumber extends StatefulWidget {
  const SignInWithPhoneNumber({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInWithPhoneNumber> createState() => _SignInWithPhoneNumberState();
}

class _SignInWithPhoneNumberState extends State<SignInWithPhoneNumber> {
  TextEditingController _phoneNumberdController = TextEditingController();
  @override
  void dispose() {
    _phoneNumberdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GapSpacer(
          height: 15.h,
        ),
        CustomTextField(
          controller: _phoneNumberdController,
          countryCode: '+971',
          icon: Image(
            image: AssetImage('assets/uae.png'),
            width: 30.w,
            height: 30.h,
          ),
          inputType: TextInputType.number,
          hint: 'Mobile No',
        ),
        GapSpacer(
          height: 25.h,
        ),
        InkWell(
          onTap: () {
            // setState(() {
            //   otp = 1;
            //   log('otp$otp');
            // });
            BlocProvider.of<SingInBlocBloc>(context).add(LoginWithPhoneNumber(
                '971${_phoneNumberdController.value.text}', context));
          },
          child: SizedBox(
            height: 35.h,
            width: 100.w,
            child: BlocBuilder<SingInBlocBloc, SingInBlocState>(
              builder: (context, state) {
                return state.loginWithNumberIsLoading
                    ? const ButtonLoader()
                    : const CustomButton(
                        name: 'Sign In ',
                      );
              },
            ),
          ),
        ),
      ],
    );
  }
}
