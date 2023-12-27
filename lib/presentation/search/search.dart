import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:market_2_home/application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import 'package:market_2_home/presentation/commonWidgets/search_bar.dart';
import 'package:market_2_home/presentation/core/gap_spacer.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../domain/core/di/injectable.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});
  static const String routeSearch = 'routeSearch';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Timer? _debounce;
  late VendorProductsBloc vendorProductsBloc;

  _onSearchChanged(String query, BuildContext context) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context.read<VendorProductsBloc>().add(SearchResult(query));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    vendorProductsBloc = getit<VendorProductsBloc>();
  }

  @override
  void dispose() {
    vendorProductsBloc.resetState();
    print('hellow');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text('Search')),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: const Offset(0.0, 1.0),
                  blurRadius: 2.0,
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                onChanged: ((value) => _onSearchChanged(value, context)),
                decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  border: InputBorder.none,
                  hintText: 'Search Here..',
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<VendorProductsBloc, VendorProductsState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state.searchProductList.isEmpty) {
                  return Center(
                    child: Text(
                      'No Result Found, Keep Search!',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  );
                } else {
                  return ListView.separated(
                      itemBuilder: ((context, index) {
                        String productId =
                            state.searchProductList[index].productId.toString();
                        String productName =
                            state.searchProductList[index].productName ?? '';
                        String vendorShopName =
                            state.searchProductList[index].vendorShopName ?? '';

                        String productImage =
                            state.searchProductList[index].productImage ?? '';
                        return InkWell(
                          onTap: () => context.read<VendorProductsBloc>().add(
                              GetProductDetails(context, productId, 'search')),
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: ListTile(
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productName,
                                      style: const TextStyle(fontSize: 17),
                                    ),
                                    GapSpacer(
                                      height: 4.h,
                                    ),
                                    Text(
                                      vendorShopName,
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                leading: CircleAvatar(
                                    maxRadius: 30.r,
                                    backgroundImage: CachedNetworkImageProvider(
                                      productImage,
                                    )),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                        );
                      }),
                      separatorBuilder: ((context, index) => Divider(
                            height: 2.h,
                            color: Colors.black45,
                          )),
                      itemCount: state.searchProductList.length);
                }
              },
            ),
          )
        ],
      )),
    );
  }
}
