import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/presentation/auth/signIn/forgotPassword/forgot_password.dart';

import '../../../../application/auth/signInBloc/sing_in_bloc_bloc.dart';
import '../../../commonWidgets/button_loader.dart';
import '../../../core/constant.dart';
import '../../../core/gap_spacer.dart';
import '../../../commonWidgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SingInWithEmail extends StatefulWidget {
  SingInWithEmail({
    Key? key,
  }) : super(key: key);

  @override
  State<SingInWithEmail> createState() => _SingInWithEmailState();
}

class _SingInWithEmailState extends State<SingInWithEmail> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextField(
            controller: _emailController,
            icon: const Icon(
              Icons.email,
              color: Colors.grey,
            ),
            inputType: TextInputType.emailAddress,
            hint: 'Email',
          ),
          kHeight8,
          CustomTextField(
            controller: _passwordController,
            icon: const Icon(
              Icons.lock,
              color: Colors.grey,
            ),
            obsecure: true,
            hint: 'Password',
          ),
          GapSpacer(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed(ForgotPassword.routeForgotPassword),
                    child: Text('Forgot Password?')),
                InkWell(
                  onTap: () {
                    BlocProvider.of<SingInBlocBloc>(context).add(
                        LoginWithEmailPassword(_emailController.value.text,
                            _passwordController.value.text, context));
                  },
                  child: SizedBox(
                    height: 35.h,
                    width: 100.w,
                    child: BlocBuilder<SingInBlocBloc, SingInBlocState>(
                      builder: (context, state) {
                        return state.isLoading
                            ? const ButtonLoader()
                            : const CustomButton(
                                name: 'Sign In ',
                              );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
