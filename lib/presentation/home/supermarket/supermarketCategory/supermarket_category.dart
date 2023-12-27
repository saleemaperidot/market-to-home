import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_2_home/domain/home/supermarket/vendorCategory/vendor_category/subCategory.dart';
import 'package:market_2_home/presentation/commonWidgets/search_bar.dart';
import 'package:market_2_home/presentation/home/home.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../application/home/dashboard/bloc/dash_borad_bloc.dart';
import '../../../../application/home/supermarket/vendor/vendor_bloc.dart';
import '../../../../application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import '../../../commonWidgets/headerBar.dart';
import 'widgets/category_list_grid.dart';

class SupermarketCategory extends StatelessWidget {
  const SupermarketCategory({super.key});

  static const routeSupermarketCategory = '/routeSupermarketCategory';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const HeaderBar(
            backButtton: true,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: InkWell(
                onTap: () =>
                    context.read<DashBoradBloc>().add(SearchClick(context)),
                child: AbsorbPointer(child: const SearchBars())),
          ),
          SizedBox(
            height: 25.h,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(0.0, 2.0),
                      blurRadius: 4.0,
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const LeftHeader(header: 'Categories'),
                    SizedBox(
                      height: 12.h,
                    ),
                    Expanded(
                      child: BlocBuilder<VendorBloc, VendorState>(
                        builder: (context, state) {
                          return Skeletonizer(
                            enabled: state.isLoading,
                            child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 120.w,
                                        childAspectRatio: 3 / 2.6,
                                        crossAxisSpacing: 12,
                                        mainAxisSpacing: 12),
                                itemCount: state.category.length,
                                itemBuilder: (BuildContext ctx, index) {
                                  String image = state
                                      .category[index].shopTypeCategoryImage;
                                  String title =
                                      state.category[index].shopSubCatName;

                                  List<SubCategory> subCategoryList =
                                      state.category[index].subCategory;
                                  String categorySlug =
                                      state.category[index].shopSubCatUrlCode;

                                  return InkWell(
                                    onTap: () {
                                      if (subCategoryList.isEmpty) {
                                        BlocProvider.of<VendorProductsBloc>(
                                                context)
                                            .add(ProductInit(
                                                context, categorySlug, title));
                                      } else {
                                        BlocProvider.of<VendorBloc>(context)
                                            .add(GetSubCategories(context,
                                                categorySlug, subCategoryList));
                                      }
                                    },
                                    child: CategoryListGrid(
                                      image: image,
                                      title: title,
                                    ),
                                  );
                                }),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
