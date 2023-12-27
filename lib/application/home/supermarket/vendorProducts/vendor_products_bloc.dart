import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/application/cart/bloc/cart_bloc.dart';
import 'package:market_2_home/application/home/supermarket/vendor/vendor_bloc.dart';
import 'package:market_2_home/domain/cart/cart_repo.dart';
import 'package:market_2_home/domain/home/supermarket/vendorProducts/vendor_products_repo.dart';
import 'package:market_2_home/presentation/auth/auth.dart';
import 'package:market_2_home/presentation/commonWidgets/screen_arguments.dart';

import '../../../../domain/core/shared_pref/shared_pref.dart';
import '../../../../domain/home/supermarket/vendorProductDetails/vendor_product_details/data.dart';
import '../../../../domain/home/supermarket/vendorProducts/product_search_result/product.dart';
import '../../../../domain/home/supermarket/vendorProducts/vendor_product_freezed/vendor_product_freezed/datum.dart';
import '../../../../presentation/commonWidgets/components.dart';
import '../../../../presentation/home/supermarket/supermarketProductDetails/supermarket_product_details.dart';
import '../../../../presentation/home/supermarket/supermarketProducts/supermarket_products.dart';

part 'vendor_products_event.dart';
part 'vendor_products_state.dart';
part 'vendor_products_bloc.freezed.dart';

@LazySingleton()
@injectable
class VendorProductsBloc
    extends Bloc<VendorProductsEvent, VendorProductsState> {
  final ProductRepo productRepo;
  final CartRepo cartRepo;
  final VendorBloc vendorBloc;
  VendorProductsBloc(this.productRepo, this.vendorBloc, this.cartRepo)
      : super(_Initial()) {
    on<ProductInit>((productInit));
    on<GetProducts>((getProducts));
    on<GetProductsFromScroll>((getProductsFromScroll));
    on<GetProductDetails>((getProductDetails));
    on<QuantityIncrement>((quantityIncrement));
    on<QuantityDecrement>((quantityDecrement));
    on<AddToWishList>((addToWishList));
    on<RemoveFromWishList>((removeFromWishList));
    on<CartUpdateChange>((cartUpdateChange));
    on<SearchResult>((getSearchResult));
    on<AddtoWishListFromDetails>((addToWishListFromDetails));
    on<RemoveFromWishListFromDetails>((removeFromWishListFromDetails));
  }

  int totalPage = 0;
  int currentPage = 0;

  productInit(ProductInit event, Emitter<VendorProductsState> emit) async {
    emit(state.copyWith(
        isLoading: true,
        productData: [],
        subCategoryName: event.subCategoryName));

    Navigator.of(event.context)
        .pushNamed(SupermarketProducts.routeSupermarketProducts);
    String? userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    String vendorSlug = vendorBloc.state.vendorSlug;
    String categorySlug = vendorBloc.state.categorySlug;
    currentPage = 1;

    final result = await productRepo.getProducts(
        currentPage.toString(), vendorSlug, categorySlug, event.categorySlug,
        userId: userId);

    final _state = result.fold((failure) {
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        totalPage = success.products!.lastPage!;

        // page++;
        // log(page.toString());
        inspect(success.products);
        //this event for updating CartBloc total quantity and total price to show bottom cart bar
        BlocProvider.of<CartBloc>(event.context).add(
            TotalItemCartTotalBottomBarUpdate(success.totalCartCount.toString(),
                success.totalCartAount.toString()));

        return state.copyWith(
          isLoading: false,
          // vendorCategory: success.categories!,
          subCategorySlug: event.categorySlug,
          selectedSubCategory: event.categorySlug,
          productData: success.products!.data!,
        );
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getProducts(GetProducts event, Emitter<VendorProductsState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      selectedSubCategory: event.categorySlug,
      subCategorySlug: event.categorySlug,
    ));
    String? userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    String vendorSlug = vendorBloc.state.vendorSlug;
    String categorySlug = vendorBloc.state.categorySlug;
    currentPage = 1;

    final result = await productRepo.getProducts(
        currentPage.toString(), vendorSlug, categorySlug, event.categorySlug,
        userId: userId);

    final _state = result.fold((failure) {
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        totalPage = success.products!.lastPage!;

        // Navigator.of(event.context)
        //     .pushNamed(SupermarketProducts.routeSupermarketProducts);
        // page++;
        // log(page.toString());
        inspect(success.products);

        return state.copyWith(
          isLoading: false,
          // vendorCategory: success.categories!,

          productData: success.products!.data!,
        );
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getProductsFromScroll(
      GetProductsFromScroll event, Emitter<VendorProductsState> emit) async {
    emit(state.copyWith(isScrollingLoading: true));
    log(currentPage.toString());

    String? userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    String vendorSlug = vendorBloc.state.vendorSlug;
    String categorySlug = vendorBloc.state.categorySlug;

    log(currentPage.toString());
    if (currentPage <= totalPage) {
      currentPage++;
      final result = await productRepo.getProducts(
          currentPage.toString(), vendorSlug, categorySlug, event.categorySlug,
          userId: userId);

      final _state = result.fold((failure) {
        return state.copyWith(stauts: false, isScrollingLoading: false);
      }, (success) {
        if (success.status == true) {
          totalPage = success.products!.lastPage!;

          // Navigator.of(event.context)
          //     .pushNamed(SupermarketProducts.routeSupermarketProducts);
          // page++;
          // log(page.toString());
          inspect(success.products);

          return state.copyWith(
              isScrollingLoading: false,
              // vendorCategory: success.categories!,
              subCategorySlug: event.categorySlug,
              selectedSubCategory: event.categorySlug,
              productData: [...state.productData, ...success.products!.data!]);
        } else {
          return state.copyWith(stauts: false, isScrollingLoading: false);
        }
      });

      emit(_state);
    } else {
      emit(state.copyWith(isScrollingLoading: false));
    }
  }

  cartUpdateChange(
      CartUpdateChange event, Emitter<VendorProductsState> emit) async {
    emit(state.copyWith(isLoading: true));
    String? userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    String vendorSlug = vendorBloc.state.vendorSlug;
    String categorySlug = vendorBloc.state.categorySlug;

    final result = await productRepo.getProducts(
        '1', vendorSlug, categorySlug, event.subCategorySlug,
        userId: userId);

    final _state = result.fold((failure) {
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        return state.copyWith(
          isLoading: false,
          // vendorCategory: success.categories!,

          productData: success.products!.data!,
        );
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getProductDetails(
      GetProductDetails event, Emitter<VendorProductsState> emit) async {
    // emit(state.copyWith(isLoading: true));

    String lat = await SharedPreferencesManager.getString(
            SharedPreferencesManager.lat) ??
        '';
    String long = await SharedPreferencesManager.getString(
            SharedPreferencesManager.long) ??
        '';

    String? userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    final result = await productRepo
        .getProductsDetails(event.productId, lat, long, userId: userId);

    final _state = result.fold((failure) {
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        
        Navigator.of(event.context).pushNamed(
            SupermarketProductDetails.supermarketProductDetailsRoute,
            arguments: ScreenArguments(event.from));
        inspect(success.data);

        return state.copyWith(
          isLoading: false,
          productDetailsData: success.data!,
        );
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  quantityIncrement(
      QuantityIncrement event, Emitter<VendorProductsState> emit) async {
    final userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    if (userId == null) {
      Navigator.of(event.context).pushNamed(Auth.routeAuth);
      return;
    }

    final result = await cartRepo.cartQuantityAdd(userId, '1', event.productId);

    print(event.from);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      if (success.status == true) {
        if (success.updatedQuantity == 1) {
          // toast(event.context, 'Added To Cart');
          showToast(event.context, success.message ?? '');
        }
        final productDetailsData = state.productDetailsData
            ?.copyWith(cartQuantity: success.updatedQuantity);

        if (event.from == 'product') {
          final updatedProductData = state.productData
              .map((product) {
                if (product.vendorProductId.toString() == event.productId) {
                  return product.copyWith(
                      cartQuantity: success
                          .updatedQuantity!); // Return a new ProductDatum with updated cartQuantity
                } else {
                  return product;
                }
              })
              .toList()
              .cast<ProductDatumFreezed>();
          BlocProvider.of<CartBloc>(event.context).add(
              TotalItemCartTotalBottomBarUpdate(
                  success.totalCartCount.toString(),
                  success.grandTotal.toString()));

          return state.copyWith(
              productData: updatedProductData,
              productDetailsData: productDetailsData);
        } else if (event.from == 'cart' || event.from == 'search') {
          BlocProvider.of<CartBloc>(event.context).add(GetCart(event.context));
          return state.copyWith(productDetailsData: productDetailsData);
        } else if (event.from == 'wishlist') {
          if (success.updatedQuantity == 1) {
            BlocProvider.of<CartBloc>(event.context)
                .add(AddToCartFromWishList(event.context, event.productId));
          }
          BlocProvider.of<CartBloc>(event.context)
              .add(GetWishList(event.context));
          return state.copyWith(productDetailsData: productDetailsData);
        } else {
          return state;
        }

        //this event for updating CartBloc total quantity and total price to show bottom cart bar
      } else {
        print('log');
        showDialog(
            context: event.context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Sorry!!"),
                titleTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                content: Text(success.message ?? ''),
              );
            });
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  quantityDecrement(
      QuantityDecrement event, Emitter<VendorProductsState> emit) async {
    final userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    if (userId == null) {
      Navigator.of(event.context).pushNamed(Auth.routeAuth);
      return;
    }

    final result =
        await cartRepo.cartQuantityRemove(userId, '1', event.productId);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      if (success.updatedQuantity == 0) {
        showToast(event.context, 'Removed From Cart');
      }

      if (success.status == true) {
        final productDetailsData = state.productDetailsData
            ?.copyWith(cartQuantity: success.updatedQuantity);
        if (event.from == 'product') {
          final updatedProductData = state.productData
              .map((product) {
                if (product.vendorProductId.toString() == event.productId) {
                  return product.copyWith(
                      cartQuantity: success
                          .updatedQuantity!); // Return a new ProductDatum with updated cartQuantity
                } else {
                  return product;
                }
              })
              .toList()
              .cast<ProductDatumFreezed>();

          //this event for updating CartBloc total quantity and total price to show bottom cart bar
          BlocProvider.of<CartBloc>(event.context).add(
              TotalItemCartTotalBottomBarUpdate(
                  success.totalCartCount.toString(),
                  success.grandTotal.toString()));
          return state.copyWith(
              productData: updatedProductData,
              productDetailsData: productDetailsData);
        } else if (event.from == 'cart') {
          BlocProvider.of<CartBloc>(event.context).add(GetCart(event.context));
          return state.copyWith(productDetailsData: productDetailsData);
        } else if (event.from == 'wishlist') {
          BlocProvider.of<CartBloc>(event.context)
              .add(GetWishList(event.context));
          return state.copyWith(productDetailsData: productDetailsData);
        } else {
          return state;
        }
      } else {
        showDialog(
            context: event.context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Sorry!!"),
                titleTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                content: Text(success.message ?? ''),
              );
            });
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  addToWishList(AddToWishList event, Emitter<VendorProductsState> emit) async {
    final userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    if (userId == null) {
      Navigator.of(event.context).pushNamed(Auth.routeAuth);
      return;
    }
    final result =
        await productRepo.addToWishList(event.productId, userId: userId);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      if (success.status == true) {
        showToast(event.context, 'Added To Wishlist');
        final updatedProductData = state.productData
            .map((product) {
              if (product.vendorProductId.toString() == event.productId) {
                return product.copyWith(
                    isAddedWishlist: !product
                        .isAddedWishlist); // Return a new ProductDatum with updated cartQuantity
              } else {
                return product;
              }
            })
            .toList()
            .cast<ProductDatumFreezed>();

        return state.copyWith(
          productData: updatedProductData,
        );
      } else {
        showDialog(
            context: event.context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Sorry!!"),
                titleTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                content: Text(success.message ?? ''),
              );
            });
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  removeFromWishList(
      RemoveFromWishList event, Emitter<VendorProductsState> emit) async {
    String? userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    final result =
        await productRepo.removeFromWishList(event.productId, userId: userId);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      if (success.status == true) {
        showToast(event.context, 'Removed From Wishlist');
        final updatedProductData = state.productData
            .map((product) {
              if (product.vendorProductId.toString() == event.productId) {
                return product.copyWith(
                    isAddedWishlist: !product
                        .isAddedWishlist); // Return a new ProductDatum with updated cartQuantity
              } else {
                return product;
              }
            })
            .toList()
            .cast<ProductDatumFreezed>();

        return state.copyWith(
          productData: updatedProductData,
        );
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  void resetState() {
    // Implement your logic to reset or clear the state.
    // For example, you can set the state to its initial state.
    emit(state.copyWith(searchProductList: []));
  }

  getSearchResult(SearchResult event, Emitter<VendorProductsState> emit) async {
    emit(state.copyWith(searchProductList: []));
    emit(state.copyWith(isLoading: true));

    String lat = await SharedPreferencesManager.getString(
            SharedPreferencesManager.lat) ??
        '';
    String long = await SharedPreferencesManager.getString(
            SharedPreferencesManager.long) ??
        '';

    print(lat);
    print(long);

    final result = await productRepo.searchResult(event.query, lat, long);

    final _state = result.fold((failure) {
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        print(success.products.toString());
        return state.copyWith(
          isLoading: false,
          searchProductList: success.products!,
        );
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  addToWishListFromDetails(
      AddtoWishListFromDetails event, Emitter<VendorProductsState> emit) async {
    String? userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    if (userId == null) {
      Navigator.of(event.context).pushNamed(Auth.routeAuth);
      return;
    }

    final result =
        await productRepo.addToWishList(event.productId, userId: userId);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      if (success.status == true) {
        showToast(event.context, 'Added To Wishlist');
        final updatedProductDataDetails =
            state.productDetailsData!.copyWith(isAddedWishlist: true);

        // this for updating product list update
        final updatedProductData = state.productData
            .map((product) {
              if (product.vendorProductId.toString() == event.productId) {
                return product.copyWith(
                    isAddedWishlist: !product
                        .isAddedWishlist); // Return a new ProductDatum with updated cartQuantity
              } else {
                return product;
              }
            })
            .toList()
            .cast<ProductDatumFreezed>();

        return state.copyWith(
            productDetailsData: updatedProductDataDetails,
            productData: updatedProductData);
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  removeFromWishListFromDetails(RemoveFromWishListFromDetails event,
      Emitter<VendorProductsState> emit) async {
    String? userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    final result =
        await productRepo.removeFromWishList(event.productId, userId: userId);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      showToast(event.context, 'Removed From Wishlist');
      if (success.status == true) {
        final updatedProductDataDetails =
            state.productDetailsData!.copyWith(isAddedWishlist: false);

        final updatedProductData = state.productData
            .map((product) {
              if (product.vendorProductId.toString() == event.productId) {
                return product.copyWith(
                    isAddedWishlist: !product
                        .isAddedWishlist); // Return a new ProductDatum with updated cartQuantity
              } else {
                return product;
              }
            })
            .toList()
            .cast<ProductDatumFreezed>();

        return state.copyWith(
            productDetailsData: updatedProductDataDetails,
            productData: updatedProductData);
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }
}
