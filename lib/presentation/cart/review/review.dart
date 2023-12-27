import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/profile/bloc/profile_bloc.dart';
import 'package:market_2_home/presentation/commonWidgets/background_card.dart';
import 'package:market_2_home/presentation/core/constant.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';

class ReviewPage extends StatefulWidget {
  ReviewPage({super.key, this.endpoint, this.orderProductId});
  final String? endpoint;
  final String? orderProductId;

  static const routeReview = 'routeReview';

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  String ratingValue = '0';
  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review & Rating'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'How do you rate?',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
          ),
          kHeight10,
          RatingBar.builder(
            initialRating: 0,
            itemSize: 25.h,
            minRating: 1,

            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            // itemPadding:
            //     EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Theme.of(context).colorScheme.primary,
            ),
            onRatingUpdate: (rating) {
              setState(() {
                ratingValue = rating.toString();
              });
            },
          ),
          kHeight15,
          BackgroundCard(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Write a review',
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp)),
              kHeight10,
              BackgroundCard(
                  child: TextField(
                controller: commentController,
                decoration: InputDecoration.collapsed(
                  hintText: "Comment Here",
                  border: InputBorder.none,
                ),
                maxLines: 6,
              ))
            ],
          )),
          kHeight15,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CustomButton(name: 'Submit Review'),
              InkWell(
                onTap: () => BlocProvider.of<ProfileBloc>(context).add(
                    ReviewAndRating(
                        context,
                        widget.endpoint ?? '',
                        widget.orderProductId ?? '',
                        ratingValue,
                        commentController.value.text)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(18.r)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
                    child: Center(
                        child: Text(
                      'Submit Review',
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    )),
                  ),
                ),
              ),
              GapSpacer(
                width: 10.w,
              ),
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(18.r)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 13.w),
                    child: Center(
                        child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    )),
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
