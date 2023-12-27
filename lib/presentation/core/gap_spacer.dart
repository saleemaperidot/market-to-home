import 'package:flutter/material.dart';

class GapSpacer extends StatelessWidget {
  final double? height;
  final double? width;
  const GapSpacer({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
