part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial({
    @Default(false) bool stauts,
    @Default(false) bool isLoading,
    CartData? cartData,
    @Default([]) List<CartProduct> cartProductList,
    @Default([]) List<WishListData> wishListProducts,
    @Default('') String subTotal,
    @Default('') String vat,
    @Default(0) int cartQuantity,
    @Default('') String Total,
  }) = _Initial;
}
