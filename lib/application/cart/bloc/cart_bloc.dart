import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/application/home/supermarket/vendorProducts/vendor_products_bloc.dart';
import 'package:market_2_home/domain/cart/cart_repo.dart';
import 'package:market_2_home/domain/main_failures/main_failures.dart';
import 'package:market_2_home/presentation/commonWidgets/components.dart';
import 'package:market_2_home/presentation/home_container.dart';

import '../../../domain/cart/cartModel/cart_model/data.dart';
import '../../../domain/cart/cartModel/cart_model/product.dart';
import '../../../domain/core/shared_pref/shared_pref.dart';
import '../../../domain/home/supermarket/vendorProducts/vendor_products_repo.dart';

import '../../../domain/wishList/wishListModel/wish_list_model/datum.dart';
import '../../../presentation/auth/auth.dart';
import '../order/bloc/order_bloc.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepo cartRepo;
  final ProductRepo productRepo;
  final VendorProductsBloc vendorProductsBloc;
  CartBloc(this.cartRepo, this.productRepo, this.vendorProductsBloc)
      : super(_Initial()) {
    on<GetCart>((getCartDetails));
    on<CartQuantityIncrement>((quantityIncrement));
    on<CartQuantityDecrement>((quantityDecrement));
    on<SaveForLater>((saveForLater));
    on<RemoveFromcart>((removeFromCart));
    on<GetWishList>((getWishList));
    on<RemoveFromWishListEvent>((removeFromWishList));
    on<AddToCartFromWishList>((addToCartFromWishList));
    on<TotalItemCartTotalBottomBarUpdate>((totalItemCartTotalBottomBarUpdate));
    on<CartEmptyContinueShopping>((cartEmptyContinueShopping));
    on<WishListEmptyContinueShopping>((wishListEmptyContinueShopping));
    on<CustomerDataUpdate>((customerDataUpdate));
    on<ClearCartAndWishList>((clearCartAndWishList));
  }

  getCartDetails(GetCart event, Emitter<CartState> emit) async {
    emit(state.copyWith(
        isLoading: true,
        cartData: null,
        cartProductList: [],
        // cartQuantity: success.totalCartCount.toString(),
        subTotal: '0',
        vat: '0',
        Total: '0'));

    // Navigator.of(event.context)
    //     .pushNamed(SupermarketCategory.routeSupermarketCategory);

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await cartRepo.getCartDetails(userId);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        return state.copyWith(
            isLoading: false,
            cartData: success.data,
            cartProductList: success.data!.products,
            // cartQuantity: success.totalCartCount.toString(),
            subTotal: success.data!.cartSubTotal!.toString(),
            vat: success.data!.vat!.toString(),
            Total: success.data!.cartTotal!.toString());
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  quantityIncrement(
      CartQuantityIncrement event, Emitter<CartState> emit) async {
    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await cartRepo.cartQuantityAdd(userId, '1', event.productId);

    final _state = result.fold((failure) {
      log('hallow');
      if (failure is ServerFailure) {
        // Handle server failure here
        // You can access the error message using failure.errorMessage
        showToast(event.context, failure.errorResponse.message.toString());

        // print('Server Error: ${failure.errorResponse.message.toString()}');
        return state.copyWith(
          stauts: false,
        );
      } else {
        // Handle other failure cases here if needed
        return state; // Return the current state unchanged
      }

      // return state.copyWith(
      //   stauts: false,
      // );
    }, (success) {
      if (success.status == true) {
        log('hallow');
        //if there any changes in cart need to update cart list
        String subCategorySlub = vendorProductsBloc.state.subCategorySlug;
        if (subCategorySlub.isNotEmpty) {
          BlocProvider.of<VendorProductsBloc>(event.context)
              .add(CartUpdateChange(event.context, subCategorySlub));
        }

        // inspect(state.productData);
        final updatedCartProductData = state.cartProductList
            .map((product) {
              if (product.productId.toString() == event.productId) {
                return product.copyWith(
                    productQuantity: product.productQuantity! + 1,
                    subTotal: success
                        .productTotal); // Return a new ProductDatum with updated cartQuantity
              } else {
                return product;
              }
            })
            .toList()
            .cast<CartProduct>();

        print(success.grandTotal.toString());

        return state.copyWith(
          cartProductList: updatedCartProductData,
          subTotal: success.cartTotal.toString(),
          vat: success.vat.toString(),
          Total: success.grandTotal.toString(),
        );
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  quantityDecrement(
      CartQuantityDecrement event, Emitter<CartState> emit) async {
    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result =
        await cartRepo.cartQuantityRemove(userId, '1', event.productId);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      String subCategorySlub = vendorProductsBloc.state.subCategorySlug;

      if (subCategorySlub.isNotEmpty) {
        BlocProvider.of<VendorProductsBloc>(event.context)
            .add(CartUpdateChange(event.context, subCategorySlub));
      }

      if (success.status == true) {
       
      
        if (success.updatedQuantity == 0) {
          List<CartProduct> product = List.from(state.cartProductList);
          CartProduct removeProduct = product
              .where(
                  (element) => element.productId.toString() == event.productId)
              .first;
          product.remove(removeProduct);
          return state.copyWith(
            cartProductList: product,
            subTotal: success.cartTotal.toString(),
            vat: success.vat.toString(),
            cartQuantity: success.totalCartCount!,
            Total: success.grandTotal.toString(),
          );
        } else {
          final updatedCartProductData = state.cartProductList
              .map((product) {
                if (product.productId.toString() == event.productId) {
                  return product.copyWith(
                      productQuantity: product.productQuantity! - 1,
                      subTotal: success
                          .productTotal); // Return a new ProductDatum with updated cartQuantity
                } else {
                  return product;
                }
              })
              .toList()
              .cast<CartProduct>();

          return state.copyWith(
            cartProductList: updatedCartProductData,
            subTotal: success.cartTotal.toString(),
            vat: success.vat.toString(),
            Total: success.grandTotal.toString(),
          );
        }
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  saveForLater(SaveForLater event, Emitter<CartState> emit) async {
    log(event.productId);

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await cartRepo.saveForLater(userId, event.productId);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      showToast(event.contex, 'Added to Wishlist');
      String subCategorySlub = vendorProductsBloc.state.subCategorySlug;

      if (subCategorySlub.isNotEmpty) {
        BlocProvider.of<VendorProductsBloc>(event.contex)
            .add(CartUpdateChange(event.contex, subCategorySlub));
      }

      if (success.status == true) {
        inspect(success);
        List<CartProduct> product = List.from(state.cartProductList);
        CartProduct removeProduct = product
            .where((element) => element.productId.toString() == event.productId)
            .first;
        product.remove(removeProduct);

        event.contex.read<CartBloc>().add(GetWishList(event.contex));
        return state.copyWith(
          cartProductList: product,
          subTotal: success.cartTotal.toString(),
          vat: success.vat.toString(),
          Total: success.grandTotal.toString(),
        );
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  removeFromCart(RemoveFromcart event, Emitter<CartState> emit) async {
    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';
    final result = await cartRepo.removeFromCart(userId, event.productId);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      String subCategorySlub = vendorProductsBloc.state.subCategorySlug;

      if (subCategorySlub.isNotEmpty) {
        BlocProvider.of<VendorProductsBloc>(event.context)
            .add(CartUpdateChange(event.context, subCategorySlub));
      }

      if (success.status == true) {
        inspect(success);
        showToast(event.context, 'Removed from cart');
        List<CartProduct> product = List.from(state.cartProductList);
        CartProduct removeProduct = product
            .where((element) => element.productId.toString() == event.productId)
            .first;
        product.remove(removeProduct);
        return state.copyWith(
          cartProductList: product,
          subTotal: success.cartTotal.toString(),
          vat: success.vat.toString(),
          cartQuantity: success.totalCartCount!,
          Total: success.grandTotal.toString(),
        );
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  getWishList(GetWishList event, Emitter<CartState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await cartRepo.getWishList(userId);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        inspect(success.data);
        return state.copyWith(
            isLoading: false, wishListProducts: success.data!);
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  removeFromWishList(
      RemoveFromWishListEvent event, Emitter<CartState> emit) async {
    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';
    final result =
        await productRepo.removeFromWishList(event.productId, userId: userId);

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      showToast(event.context, 'Removed from wishlist');
      String subCategorySlub = vendorProductsBloc.state.subCategorySlug;

      if (subCategorySlub.isNotEmpty) {
        BlocProvider.of<VendorProductsBloc>(event.context)
            .add(CartUpdateChange(event.context, subCategorySlub));
      }

      if (success.status == true) {
        inspect(success);
        List<WishListData> products = List.from(state.wishListProducts);
        WishListData removeProduct = products
            .where((element) => element.productId.toString() == event.productId)
            .first;
        products.remove(removeProduct);
        return state.copyWith(wishListProducts: products);
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  addToCartFromWishList(
      AddToCartFromWishList event, Emitter<CartState> emit) async {
    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';
    final result = await cartRepo.cartQuantityAddFromWishList(
        userId, '1', event.productId, '1');

    final _state = result.fold((failure) {
      return state.copyWith(
        stauts: false,
      );
    }, (success) {
      String subCategorySlub = vendorProductsBloc.state.subCategorySlug;

      if (subCategorySlub.isNotEmpty) {
        BlocProvider.of<VendorProductsBloc>(event.context)
            .add(CartUpdateChange(event.context, subCategorySlub));
      }

      if (success.status == true) {
        showToast(event.context, 'Added to cart');
        log('success');
        List<WishListData> products = List.from(state.wishListProducts);
        WishListData removeProduct = products
            .where((element) => element.productId.toString() == event.productId)
            .first;
        products.remove(removeProduct);

        event.context.read<CartBloc>().add(
            GetCart(event.context)); // calling get cart and updationg cart data

        return state.copyWith(
            wishListProducts: products,
            Total: success.cartTotal.toString(),
            cartQuantity: success.totalCartCount!);
      } else {
        showToast(event.context, success.message ?? "Cannot add to cart");
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  customerDataUpdate(CustomerDataUpdate event, Emitter<CartState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    if (event.userName.isEmpty) {
      showToast(event.context, 'Full Name Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.email.isEmpty) {
      showToast(event.context, 'Email Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    }

    final result = await cartRepo.customerDataUpdate(
        userId, event.userName, event.email,
        referalCode: event.referalCode, phoneNumber: event.phoneNumber);

    inspect(result);
    final _state = result.fold((failure) {
      showToast(event.context, 'The given data was invalid');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        SharedPreferencesManager.setString(
            SharedPreferencesManager.email, event.email);
        SharedPreferencesManager.setString(
            SharedPreferencesManager.userName, event.userName);

        event.context
            .read<OrderBloc>()
            .add(Checkout(event.context, from: 'emailDialog'));

        return state.copyWith(
          isLoading: false,
        );
      } else {
        showToast(event.context, success.message.toString());
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  totalItemCartTotalBottomBarUpdate(
      TotalItemCartTotalBottomBarUpdate event, Emitter<CartState> emit) async {
    emit(state.copyWith(
        cartQuantity: int.parse(event.totalQuantity), Total: event.totalPrice));
  }

  cartEmptyContinueShopping(
      CartEmptyContinueShopping event, Emitter<CartState> emit) async {
    final userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    if (userId == null) {
      Navigator.of(event.context).pushNamed(Auth.routeAuth);
      return;
    } else {
      Navigator.of(event.context).pushNamed(HomeContainer.routeHomeContainer);
      return;
    }
  }

  wishListEmptyContinueShopping(
      WishListEmptyContinueShopping event, Emitter<CartState> emit) async {
    final userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);
    if (userId == null) {
      Navigator.of(event.context).pushNamed(Auth.routeAuth);
      return;
    } else {
      Navigator.of(event.context).pushNamed(HomeContainer.routeHomeContainer);
      return;
    }
  }

  clearCartAndWishList(event, Emitter<CartState> emit) async {
    return emit(state.copyWith(cartProductList: [], wishListProducts: []));
  }
}
