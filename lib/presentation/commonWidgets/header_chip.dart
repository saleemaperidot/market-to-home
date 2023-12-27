import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import 'package:market_2_home/domain/home/supermarket/vendorCategory/vendor_category/subCategory.dart';

class HeaderChip extends StatefulWidget {
  final List<SubCategory> categoriesList;
  const HeaderChip({
    required this.categoriesList,
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderChip> createState() => _HeaderChipState();
}

class _HeaderChipState extends State<HeaderChip> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToItem(int index) {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        index * 77.0, // Adjust the value based on your item height
        duration: Duration(seconds: 1), // You can adjust the duration
        curve: Curves.linear, // You can use different easing curves
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.separated(
          controller: _scrollController,
          separatorBuilder: (context, index) => SizedBox(
                width: 10.w,
              ),
          itemCount: widget.categoriesList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            String category = widget.categoriesList[index].subcategorySlug!;
            return BlocBuilder<VendorProductsBloc, VendorProductsState>(
              builder: (context, state) {
                String selectedCategory = state.selectedSubCategory;
                return InkWell(
                  onTap: () {
                    if (index != widget.categoriesList.length - 1) {
                      _scrollToItem(index);
                    }

                    BlocProvider.of<VendorProductsBloc>(context)
                        .add(GetProducts(context, category));
                  },
                  child: Container(
                    padding: EdgeInsets.all(4.h),
                    decoration: BoxDecoration(
                        color: category == selectedCategory
                            ? Theme.of(context).colorScheme.primary
                            : Colors.white,
                        border: Border.all(color: Colors.grey.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.h),
                      child: Row(
                        children: [
                          // Image.asset(
                          //   'assets/supermarket.png',
                          // ),

                          Text(
                            widget.categoriesList[index].subcategorySlug!,
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: category == selectedCategory
                                    ? Colors.white
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          })),
    );
  }
}
