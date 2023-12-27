import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart';
import 'package:market_2_home/domain/profile/myAddress/address_model/datum.dart';
import 'package:market_2_home/presentation/auth/widgets/custom_text_field.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:pinput/pinput.dart';

import '../../../commonWidgets/button_loader.dart';

class AddAddress extends StatefulWidget {
  final AddressData? addressDatatModel;
  final String? from;
  AddAddress({super.key, this.addressDatatModel, this.from});

  static const routeAddAddress = 'routeAddAddress';

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  final TextEditingController _firstNameController = TextEditingController();

  final TextEditingController _lastNameController = TextEditingController();

  final TextEditingController _streetNameController = TextEditingController();

  final TextEditingController _buildingNameController = TextEditingController();

  final TextEditingController _buildingNumberController =
      TextEditingController();

  final TextEditingController _contactNumberController =
      TextEditingController();

  void initCheck() {
    if (widget.addressDatatModel != null) {
      _firstNameController.setText(widget.addressDatatModel?.firstName ?? "");
      _lastNameController.setText(widget.addressDatatModel?.lastName ?? "");
      _streetNameController.setText(widget.addressDatatModel?.streetName ?? "");
      _buildingNameController
          .setText(widget.addressDatatModel?.buildingName ?? "");
      _buildingNumberController
          .setText(widget.addressDatatModel?.buildingNo ?? "");
      _contactNumberController
          .setText(widget.addressDatatModel?.contactNumber ?? "");
    }
  }

  @override
  void initState() {
    initCheck();
    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _streetNameController.dispose();
    _buildingNameController.dispose();
    _buildingNumberController.dispose();
    _contactNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Add Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 15.w,
              right: 15.w,
              top: 15.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w, top: 10.h),
              child: Text(
                'First Name',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            GapSpacer(
              height: 4.h,
            ),
            CustomTextField(
                controller: _firstNameController,
                inputType: TextInputType.text,
                hint: 'Enter First Name'),
            Padding(
              padding: EdgeInsets.only(left: 4.w, top: 10.h),
              child: Text(
                'Last Name',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            GapSpacer(
              height: 4.h,
            ),
            CustomTextField(
                controller: _lastNameController,
                inputType: TextInputType.text,
                hint: 'Enter Last Name'),
            Padding(
              padding: EdgeInsets.only(left: 4.w, top: 10.h),
              child: Text(
                'Street Name',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            GapSpacer(
              height: 4.h,
            ),
            CustomTextField(
                controller: _streetNameController,
                inputType: TextInputType.text,
                hint: 'Enter Street Name'),
            Padding(
              padding: EdgeInsets.only(left: 4.w, top: 10.h),
              child: Text(
                'Apartment Name',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            GapSpacer(
              height: 4.h,
            ),
            CustomTextField(
                controller: _buildingNameController,
                inputType: TextInputType.text,
                hint: 'Enter Apartment Name'),
            Padding(
              padding: EdgeInsets.only(left: 4.w, top: 10.h),
              child: Text(
                'Flat Number',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            GapSpacer(
              height: 4.h,
            ),
            CustomTextField(
                controller: _buildingNumberController,
                inputType: TextInputType.number,
                hint: 'Enter Flat Number'),
            Padding(
              padding: EdgeInsets.only(left: 4.w, top: 10.h),
              child: Text(
                'Contact Number',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            GapSpacer(
              height: 4.h,
            ),
            CustomTextField(
                controller: _contactNumberController,
                inputType: TextInputType.number,
                hint: 'Enter Contact Number'),
            GapSpacer(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (() {
                    context.read<ProfileBloc>().add(AddAddressEvent(
                        context,
                        _firstNameController.value.text,
                        _lastNameController.text,
                        _streetNameController.text,
                        _buildingNameController.text,
                        _buildingNumberController.text,
                        _contactNumberController.text,
                        widget.addressDatatModel?.latitude ?? "",
                        widget.addressDatatModel?.longitude ?? "",
                        id: widget.addressDatatModel?.addressId,
                        from: widget.from));
                  }),
                  child: SizedBox(
                    height: 30.h,
                    width: 100.w,
                    child: BlocBuilder<ProfileBloc, ProfileState>(
                      builder: (context, state) {
                        return state.isLoading
                            ? ButtonLoader()
                            : CustomIconButton(
                                name:
                                    '${widget.addressDatatModel == null ? "Add Address" : "Save Address"}');
                      },
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
