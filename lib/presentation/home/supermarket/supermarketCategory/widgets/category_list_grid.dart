import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/supermarket/vendor/vendor_bloc.dart';

class CategoryListGrid extends StatelessWidget {
  final String image;
  final String title;
  const CategoryListGrid({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorBloc, VendorState>(builder: (context, state) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: Offset(1.0, 2.0),
                blurRadius: 3.0,
              ),
            ],
            borderRadius: BorderRadius.circular(15)),
        child: Stack(children: [
          CachedNetworkImage(
            imageUrl: image,
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Center(
                child: Icon(
              Icons.error,
              color: Colors.red,
            )),
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fill,
                ),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 10.h,
            left: 0,
            right: 0,
            child: Container(
              constraints: BoxConstraints(maxHeight: 40),
              color: Colors.black38,
              height: 20.h,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      title,
                      maxLines: null,
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ]),
      );
    });
  }
}
