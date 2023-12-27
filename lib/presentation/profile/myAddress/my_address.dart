import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart';
import 'package:market_2_home/domain/profile/myAddress/address_model/datum.dart';
import 'package:market_2_home/presentation/cart/checkout/checkout.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:market_2_home/presentation/home/mapLocation/addAddress/add_address.dart';

import '../../commonWidgets/screen_arguments.dart';
import '../../home/mapLocation/map_location.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({super.key});

  static const routeMyAddress = 'routeMyAddress';

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const GetAddress());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text('Choose Address'),
        ),
        body: Column(
          children: [
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return Expanded(
                  child: ListView.separated(
                    itemCount: state.addressList.length,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      String name = state.addressList[index].firstName!;
                      String lat = state.addressList[index].latitude!;
                      String long = state.addressList[index].longitude!;
                      String addressId =
                          state.addressList[index].addressId?.toString() ?? '';
                      String address = state.addressList[index].address ?? '';
                      String phoneNumber =
                          state.addressList[index].contactNumber ?? '';
                      String isDefault =
                          state.addressList[index].isDefault.toString();
                      int count = index + 1;

                      // String addressId = '';
                      // String address = '';
                      // String phoneNumber = '';
                      // String isDefault = '';

                      return InkWell(
                        onTap: () => context
                            .read<ProfileBloc>()
                            .add(SetDefaultAddress(addressId,context)),
                        child: AddressCard(
                          count: count,
                          addressCount: count.toString(),
                          name: name,
                          address: address,
                          phoneNumber: phoneNumber,
                          AddressId: addressId,
                          isDefault: isDefault,
                          addressData: state.addressList[index],
                        ),
                      );
                    }),
                    separatorBuilder: ((context, index) => Divider(
                          height: 1.h,
                          thickness: 1.h,
                          color: Theme.of(context).colorScheme.primary,
                        )),
                  ),
                );
              },
            ),
            GapSpacer(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GapSpacer(
                  width: 6.w,
                ),
                InkWell(
                    onTap: () => Navigator.of(context).pushNamed(
                        MapLocation.routeMapLocation,
                        arguments: ScreenArguments('addAddress')),
                    child: const CustomIconButton(name: 'Add New Address'))
              ],
            ),
            GapSpacer(
              height: 30.h,
            ),
          ],
        ));
  }
}

class AddressCard extends StatelessWidget {
  final String isDefault;

  final String addressCount;
  final String name;
  final String address;
  final String phoneNumber;
  final String AddressId;
  final int count;
  final AddressData addressData;
  const AddressCard(
      {Key? key,
      required this.addressCount,
      required this.name,
      required this.address,
      required this.phoneNumber,
      required this.AddressId,
      required this.isDefault,
      required this.addressData,
      required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    "Address $count",
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  GapSpacer(
                    width: 5.w,
                  ),
                  Visibility(
                    visible: isDefault == '1',
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: Theme.of(context).colorScheme.primary),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.h, horizontal: 4.w),
                        child: const Text(
                          'Default',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddAddress(
                            addressDatatModel: addressData,
                          ), // Pass myData object
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          size: 16.r,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const Text('Edit',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  GapSpacer(
                    width: 8.w,
                  ),
                  InkWell(
                    onTap: () => context
                        .read<ProfileBloc>()
                        .add(DeleteAddress(AddressId)),
                    child: Visibility(
                      visible: isDefault == '0',
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete,
                            size: 16.r,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const Text('Remove',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const CustomDivider(
            padding: 1,
          ),
          Row(
            children: [
              const Expanded(child: Text('Name')),
              Expanded(child: Text(name))
            ],
          ),
          GapSpacer(
            height: 8.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(child: Text('Address')),
              Expanded(child: Text(address))
            ],
          ),
          GapSpacer(
            height: 6.h,
          ),
          Row(
            children: [
              const Expanded(child: Text('Mobile')),
              Expanded(child: Text('+971$phoneNumber'))
            ],
          ),
        ],
      ),
    );
  }
}
