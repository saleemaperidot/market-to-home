import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCard extends StatelessWidget {
  final String imageUrl;
  const ImageCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.r),
            bottomLeft: Radius.circular(18.r),
            topRight: Radius.circular(18.r),
            bottomRight: Radius.circular(18.r)),

        // image: const DecorationImage(
        //   image: AssetImage('assets/apple.jpg'),
        //   fit: BoxFit.fill,
        // ),
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
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
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0.0, 0.0),
                blurRadius: 5.0,
              ),
            ],
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
            color: Colors.white,
          ),
        ),
      ),
    );

    // Container(
    //   height: 80.h,
    //   width: 90.w,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.all(Radius.circular(18.r)),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.black.withOpacity(0.4),
    //         offset: Offset(0.0, 0.0),
    //         blurRadius: 5.0,
    //       ),
    //     ],
    //     image: const DecorationImage(
    //       image: AssetImage('assets/apple.jpg'),
    //       fit: BoxFit.fill,
    //     ),
    //   ),
    // );
  }
}
