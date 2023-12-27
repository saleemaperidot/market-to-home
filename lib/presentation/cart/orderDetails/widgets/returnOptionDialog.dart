import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart';
import 'package:market_2_home/domain/profile/order_return_option_model/return_option.dart';
import 'package:market_2_home/domain/profile/order_return_option_model/return_reason.dart';

class ReturnOptionDialog extends StatefulWidget {
  final String productId;

  const ReturnOptionDialog({super.key, required this.productId});
  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<ReturnOptionDialog> {
  int selectedRadio = 1;
  String selectedDropdownValue = "Not Good";
  int reasonId = 1;
  TextEditingController commandController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        List<ReturnReason> returnReasonList =
            state.orderReturnOptionModel?.returnReasons ?? [];

        List<ReturnOption> returnOptionList =
            state.orderReturnOptionModel?.returnOptions ?? [];

        return Dialog(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                    child: Text(
                  'Return Product',
                  style: TextStyle(fontSize: 18.sp),
                )),
                Divider(
                  height: 1.sp,
                  thickness: 2.sp,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text('Return Options', style: TextStyle(fontSize: 16.sp)),
                Row(
                  children: [
                    Radio(
                      activeColor: Colors.amber,
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value as int;
                        });
                      },
                    ),
                    Text('Refund'),
                    Radio(
                      activeColor: Colors.amber,
                      value: 2,
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value as int;
                        });
                      },
                    ),
                    Text('Replacement'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text('Return Reason', style: TextStyle(fontSize: 16.sp)),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: DropdownButton<String>(
                          hint: const Text('Select Reason'),
                          value: selectedDropdownValue,
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              selectedDropdownValue = value!;
                              final returnReason = returnReasonList.map((e) {
                                if (e.reason == selectedDropdownValue) {
                                  return e;
                                }
                              }).toList();
                              reasonId = returnReason[0]?.id ?? 1;
                            });
                          },
                          items: [
                            ...List.generate(
                                returnReasonList.length,
                                (index) => DropdownMenuItem(
                                    value: returnReasonList[index].reason,
                                    child: Text(
                                        returnReasonList[index].reason ?? '')))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Description',
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(height: 8.0),
                TextField(
                  maxLines: 6,
                  controller: commandController,
                  decoration: InputDecoration(
                    labelText: 'Enter Command',
                    border: OutlineInputBorder(
                      // Set border properties here
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.blue, // Set the border color
                        width: 2.0, // Set the border width
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ProfileBloc>(context)
                              .add(const CancelReturnDialogBox());
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text('Cancel'),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ProfileBloc>(context).add(ReturnOrder(
                              context,
                              selectedRadio.toString(),
                              reasonId.toString(),
                              widget.productId,
                              commandController.value.text));
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
