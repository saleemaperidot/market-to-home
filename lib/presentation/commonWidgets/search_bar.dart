import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          offset: const Offset(0.0, 1.0),
          blurRadius: 2.0,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: TextField(
        style: TextStyle(fontWeight: FontWeight.w400),
        // controller: _searchController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Search Here..',
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
