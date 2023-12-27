import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart';
import 'package:market_2_home/presentation/cart/checkout/checkout.dart';
import 'package:market_2_home/presentation/commonWidgets/background_card.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/profile/myAddress/my_address.dart';
import 'package:market_2_home/presentation/profile/myOrder/my_order.dart';
import 'package:market_2_home/presentation/profile/widgets/empty_profile.dart';
import 'package:pinput/pinput.dart';
import 'package:share_plus/share_plus.dart';

import '../../application/cart/bloc/cart_bloc.dart';
import '../../domain/core/shared_pref/shared_pref.dart';
import '../auth/widgets/custom_text_field.dart';
import '../commonWidgets/button_loader.dart';
import '../commonWidgets/custom_button.dart';
import '../commonWidgets/key_value_row.dart';
import '../core/constant.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(GetProfileData(context));

    Widget _roundedCornerDialog(BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0), // Adjust the radius as needed
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Logout!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              SizedBox(height: 8.0),
              Text(
                "Are you sure..?",
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<ProfileBloc>().add(Logout(context));
                    },
                    child: Text("Yes"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("No"),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    void _scaleDialog() {
      showGeneralDialog(
        context: context,
        pageBuilder: (ctx, a1, a2) {
          return SizedBox();
        },
        transitionBuilder: (ctx, a1, a2, child) {
          var curve = Curves.easeInOut.transform(a1.value);
          return Transform.scale(
            scale: curve,
            child: _roundedCornerDialog(ctx),
          );
        },
        transitionDuration: const Duration(milliseconds: 200),
      );
    }

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 60.h,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.r),
                    bottomRight: Radius.circular(15.r))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 50.h, bottom: 15.h, left: 15.w, right: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.person_outline,
                            color: Colors.white,
                          ),
                          Text(
                            'My Profile',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          _scaleDialog();
                        },
                        child: FutureBuilder<String?>(
                            future: SharedPreferencesManager.getString(
                                SharedPreferencesManager.userId),
                            builder: (BuildContext context,
                                AsyncSnapshot<String?> snapshot) {
                              if (snapshot.data != null &&
                                  snapshot.data != '') {
                                print(snapshot.data);
                                return Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.h, horizontal: 4.w),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.4),
                                          offset: const Offset(1.0, 2.0),
                                          blurRadius: 3.0,
                                        ),
                                      ],
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.logout,
                                        color: Colors.white,
                                        size: 15.r,
                                      ),
                                      GapSpacer(
                                        width: 4.w,
                                      ),
                                      Text(
                                        "Logout ",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                );
                              } else {
                                return SizedBox.shrink();
                              }
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: FutureBuilder<String?>(
            future: SharedPreferencesManager.getString(
                SharedPreferencesManager.userId),
            builder: (context, snapshot) {
              final userId = snapshot.data;

              if (snapshot.connectionState == ConnectionState.waiting) {
                // Display a loading indicator or placeholder
                return CircularProgressIndicator(); // Example: Show a loading spinner
              } else if (snapshot.hasError) {
                // Handle the error, e.g., display an error message
                return Text('Error: ${snapshot.error}');
              } else {
                if (userId != null) {
                  // UserId is not null, you can use it
                  return ProfileBody();
                } else {
                  // UserId is null, handle the case where it's not set
                  return EmptyProfile();
                }
              }
            }));
  }
}

class ProfileBody extends StatefulWidget {
  ProfileBody({
    super.key,
  });

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _userNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();

    _userNameController.dispose();
  }

  Widget _roundedCornerDialog(
    BuildContext ctx,
    TextEditingController fullNameContorlleer,
    TextEditingController emailController,
  ) {
    TextEditingController newPasswordController = TextEditingController();
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Dialog(
          child: IntrinsicHeight(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      'Update your profile details',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                  kHeight10,
                  const Padding(
                    padding: EdgeInsets.only(left: 12, bottom: 5),
                    child: Text('Full Name'),
                  ),
                  CustomTextField(
                    controller: fullNameContorlleer,
                    icon: const Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                    ),
                    inputType: TextInputType.name,
                    hint: 'Full Name',
                  ),
                  kHeight10,
                  const Padding(
                    padding: EdgeInsets.only(left: 12, bottom: 5),
                    child: Text('Email'),
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
                  kHeight10,
                  const Padding(
                    padding: EdgeInsets.only(left: 12, bottom: 5),
                    child: Text('Password'),
                  ),
                  CustomTextField(
                    controller: newPasswordController,
                    icon: const Icon(
                      Icons.groups,
                      color: Colors.grey,
                    ),
                    inputType: TextInputType.visiblePassword,
                    hint: 'New Password',
                  ),
                  GapSpacer(
                    height: 26.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          BlocProvider.of<ProfileBloc>(context)
                              .add(UpdateProfileData(
                            context,
                            fullNameContorlleer.value.text,
                            emailController.value.text,
                            newPassword: newPasswordController.value.text,
                          ));
                        },
                        child: SizedBox(
                          height: 35.h,
                          width: 100.w,
                          child: BlocBuilder<ProfileBloc, ProfileState>(
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _scaleDialog(
    BuildContext context,
    TextEditingController fullNameContorlleer,
    TextEditingController emailController,
  ) {
    showGeneralDialog(
      context: context,
      barrierDismissible:
          true, // This allows the dialog to be closed by clicking the background
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      pageBuilder: (ctx, a1, a2) {
        return SizedBox();
      },
      transitionBuilder: (ctx, a1, a2, child) {
        var curve = Curves.easeInOut.transform(a1.value);
        return Transform.scale(
          scale: curve,
          child: _roundedCornerDialog(
              context, fullNameContorlleer, emailController),
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GapSpacer(
            height: 12.h,
          ),
          CustomExpandableTail(
            text: 'My Account',
            icon: Icons.person,
            children: [
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return Container(
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 10.h),
                        child: Column(
                          children: [
                            KeyValueRow(
                              keys: 'Full Name',
                              value: state.userName,
                            ),
                            KeyValueRow(
                              keys: 'Mobile Number',
                              value: state.profileDetails?.customerMobile ?? '',
                            ),
                            KeyValueRow(
                              keys: 'Email Id',
                              value: state.email,
                            ),
                            GapSpacer(
                              height: 25.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(state.profileDetails?.memberSince ?? ''),
                                InkWell(
                                  onTap: () {
                                    _userNameController.setText(
                                        state.profileDetails?.customerName ??
                                            '');
                                    _emailController.setText(
                                        state.profileDetails?.customerEmail ??
                                            '');
                                    _scaleDialog(context, _userNameController,
                                        _emailController);
                                  },
                                  child: Row(
                                    children: [
                                      // reuse possiblity
                                      Icon(
                                        Icons.edit,
                                        size: 16.r,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      Text('Edit',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  );
                },
              )
            ],
          ),
          InkWell(
            onTap: () => Navigator.of(context).pushNamed(MyOrder.routeMyOrder),
            child: AbsorbPointer(
              child: CustomExpandableTail(
                text: 'My Order',
                icon: Icons.shopping_bag,
                children: [],
              ),
            ),
          ),
          InkWell(
            onTap: (() =>
                Navigator.of(context).pushNamed(MyAddress.routeMyAddress)),
            child: AbsorbPointer(
              child: CustomExpandableTail(
                text: 'My Address',
                icon: Icons.contact_mail,
                children: [
                  Container(
                    color: Colors.white,
                    child: const Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          'DETAİL \n' +
                              'It is a long established fact that a reader will be distracted by the readable content of a a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English.',
                        )),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (() =>
                context.read<ProfileBloc>().add(GetWalletDetailsData(context))),
            child: AbsorbPointer(
              child: CustomExpandableTail(
                text: 'My Wallet',
                icon: Icons.account_balance_wallet,
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.all(25.0.w),
                        child: const Text(
                          'DETAİL \n' +
                              'It is a long established fact that a reader will be distracted by the readable content of a a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English.',
                        )),
                  )
                ],
              ),
            ),
          ),
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return CustomExpandableTail(
                text: 'Refer A Friend',
                icon: Icons.group,
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.w, vertical: 10.h),
                        child: Column(
                          children: [
                            Text(
                              'Refer Your Friend & Earn Wallet Point Worth AED ${state.referralDetails?.referralReward}',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            GapSpacer(
                              height: 8.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BackgroundCard(
                                    padding: 15.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Referral Code: ${state.referralDetails?.referralCode}',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        GapSpacer(
                                          height: 8.h,
                                        ),
                                        InkWell(
                                          onTap: () => Share.share(
                                              '${state.referralDetails?.referralCode}'),
                                          child: CustomIconButton(
                                            name: 'Share To A Friend',
                                            icon: Icons.share,
                                            size: 15.r,
                                          ),
                                        )
                                      ],
                                    )),
                                GapSpacer(
                                  width: 10.w,
                                ),
                                BackgroundCard(
                                    padding: 15.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Total Invites',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        GapSpacer(
                                          height: 8.h,
                                        ),
                                        Text(
                                          '${state.referralDetails?.totalReferralCount}',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 27.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                            const CustomDivider(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ImageTextContainer(
                                  imageUrl: 'assets/ReferAFriend.png',
                                  text: 'Refer A Friend',
                                ),
                                ImageTextContainer(
                                  imageUrl: 'assets/FriendReciveOrder.png',
                                  text: 'Friend Receive Order',
                                ),
                                ImageTextContainer(
                                  imageUrl: 'assets/getRewards.png',
                                  text: 'Get Reward',
                                ),
                              ],
                            ),
                            const CustomDivider(),
                            const BulletPoint(
                              text:
                                  'Invite many friends as you like to shop with us & earn rewards',
                            ),
                            const BulletPoint(
                              text:
                                  'Every Person you invite will earn you AED 10 worth wallet points and your friend will receive the same after they get their order delivered',
                            ),
                            const BulletPoint(
                              text:
                                  'Wallet Amount will expire after 12 months from the date they were earned',
                            ),
                          ],
                        )),
                  )
                ],
              );
            },
          ),
          SizedBox(
            height: 200.h,
          )
        ],
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;
  const BulletPoint({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 4.r,
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          GapSpacer(
            width: 6.w,
          ),
          Expanded(
            child: Text(
              text,
            ),
          )
        ],
      ),
    );
  }
}

class ImageTextContainer extends StatelessWidget {
  final String imageUrl;
  final String text;
  const ImageTextContainer({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageUrl,
          width: 45.w,
          height: 45.w,
        ),
        GapSpacer(
          height: 6.h,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

class CustomExpandableTail extends StatelessWidget {
  final String text;
  final IconData icon;
  final List<Widget> children;
  const CustomExpandableTail({
    Key? key,
    required this.text,
    required this.icon,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 15.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: ListTileTheme(
          dense: true,
          horizontalTitleGap: 0.0,
          minLeadingWidth: 0,
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
                key: GlobalKey(),
                title: Row(
                  children: [
                    Icon(
                      icon,

                      // color: Colors.white,
                    ),
                    GapSpacer(
                      width: 6.w,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                children: children,
                onExpansionChanged: ((newState) {
                  // if(newState)
                  //     setState(() {
                  //       Duration(seconds:  20000);
                  //       selected = index;
                  //     });
                  //     else setState(() {
                  //       selected = -1;
                  //     });
                })),
          ),
        ),
      ),
    );
  }
}
