import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../application/auth/signInBloc/sing_in_bloc_bloc.dart';
import '../../../commonWidgets/button_loader.dart';
import '../../../core/constant.dart';
import '../../../core/gap_spacer.dart';
import '../../../commonWidgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  static const routeForgotPassword = 'routeForgotPassword';

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          kHeight10,
          const Padding(
            padding: EdgeInsets.only(left: 12, bottom: 5),
            child: Text('Registered Email'),
          ),
          CustomTextField(
            controller: emailController,
            icon: const Icon(
              Icons.email,
              color: Colors.grey,
            ),
            inputType: TextInputType.emailAddress,
            hint: 'Email',
          ),
          GapSpacer(
            height: 26.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  BlocProvider.of<SingInBlocBloc>(context)
                      .add(ForgotPasswordEvent(
                    context,
                    emailController.value.text,
                  ));
                },
                child: SizedBox(
                  height: 35.h,
                  width: 100.w,
                  child: BlocBuilder<SingInBlocBloc, SingInBlocState>(
                    builder: (context, state) {
                      return state.isLoading
                          ? const ButtonLoader()
                          : const CustomButton(
                              name: 'Confirm ',
                            );
                    },
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
