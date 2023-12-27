import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/presentation/auth/widgets/otp_widget.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';

import '../../../application/auth/signInBloc/sing_in_bloc_bloc.dart';
import '../../commonWidgets/button_loader.dart';
import '../../core/constant.dart';
import '../../commonWidgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _referalCodeController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _phoneNumberController.dispose();
    _userNameController.dispose();
    _referalCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50.w),
              color: Colors.white,
              height: 2,
            ),
            BlocBuilder<SingInBlocBloc, SingInBlocState>(
              builder: (context, state) {
                return IntrinsicHeight(
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              offset: Offset(0.0, 2.0),
                              blurRadius: 4.0,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: BlocBuilder<SingInBlocBloc, SingInBlocState>(
                        builder: (context, state) {
                          return state.userIdTemp != 0
                              ? Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: OtpWidget(
                                    from: 'registration',
                                  ),
                                )
                              : Container(
                                  margin: EdgeInsets.all(20.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child:
                                            const Text('Fill up your details'),
                                      ),
                                      kHeight8,
                                      CustomTextField(
                                        controller: _userNameController,
                                        icon: const Icon(
                                          Icons.account_circle,
                                          color: Colors.grey,
                                        ),
                                        inputType: TextInputType.name,
                                        hint: 'Full Name',
                                      ),
                                      kHeight8,
                                      CustomTextField(
                                        controller: _phoneNumberController,
                                        countryCode: '+971',
                                        icon: Image(
                                          image: const AssetImage(
                                              'assets/uae.png'),
                                          width: 30.w,
                                          height: 30.h,
                                        ),
                                        inputType: TextInputType.number,
                                        hint: 'Mobile Number',
                                      ),
                                      kHeight10,
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 12, bottom: 5),
                                        child: Text('Email'),
                                      ),
                                      CustomTextField(
                                        controller: _emailController,
                                        icon: const Icon(
                                          Icons.email,
                                          color: Colors.grey,
                                        ),
                                        inputType: TextInputType.emailAddress,
                                        hint: 'Email',
                                      ),
                                      kHeight10,
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 12.w, bottom: 5.h),
                                        child: const Text('Password'),
                                      ),
                                      CustomTextField(
                                        controller: _passwordController,
                                        icon: const Icon(
                                          Icons.lock,
                                          color: Colors.grey,
                                        ),
                                        inputType:
                                            TextInputType.visiblePassword,
                                        hint: 'Password',
                                      ),
                                      kHeight8,
                                      CustomTextField(
                                        controller: _referalCodeController,
                                        icon: const Icon(
                                          Icons.groups,
                                          color: Colors.grey,
                                        ),
                                        inputType:
                                            TextInputType.visiblePassword,
                                        hint: 'Referral Code (Optional)',
                                      ),
                                      GapSpacer(
                                        height: 26.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              BlocProvider.of<SingInBlocBloc>(
                                                      context)
                                                  .add(
                                                      UserRegistration(
                                                          context,
                                                          _userNameController
                                                              .value.text,
                                                          _emailController
                                                              .value.text,
                                                          _passwordController
                                                              .value.text,
                                                          _phoneNumberController
                                                              .value.text,
                                                          _referalCodeController
                                                              .value.text));
                                            },
                                            child: SizedBox(
                                              height: 35.h,
                                              width: 100.w,
                                              child: BlocBuilder<SingInBlocBloc,
                                                  SingInBlocState>(
                                                builder: (context, state) {
                                                  return state.isLoading
                                                      ? const ButtonLoader()
                                                      : const CustomButton(
                                                          name: 'Sign Up ',
                                                        );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                        },
                      )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
