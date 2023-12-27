part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.cartEmptyContinueShopping(BuildContext context) =
      CartEmptyContinueShopping;

  const factory CartEvent.wishListEmptyContinueShopping(BuildContext context) =
      WishListEmptyContinueShopping;

  const factory CartEvent.getCart(BuildContext context) = GetCart;

  const factory CartEvent.clearCartAndWishList() = ClearCartAndWishList;

  const factory CartEvent.cartQuantityIncrement(
      BuildContext context, String productId) = CartQuantityIncrement;

  const factory CartEvent.cartQuantitydecrement(
      BuildContext context, String productId) = CartQuantityDecrement;

  const factory CartEvent.saveForLater(BuildContext contex, String productId) =
      SaveForLater;

  const factory CartEvent.removeFromCart(
      BuildContext context, String productId) = RemoveFromcart;

  const factory CartEvent.getWishList(BuildContext context) = GetWishList;

  const factory CartEvent.removeFromWishListEvent(
      BuildContext context, String productId) = RemoveFromWishListEvent;

  const factory CartEvent.addToCartFromWishList(
      BuildContext context, String productId) = AddToCartFromWishList;

  const factory CartEvent.totalItemCartTotalBottomBarUpdate(
          String totalQuantity, String totalPrice) =
      TotalItemCartTotalBottomBarUpdate;

  const factory CartEvent.customerDataUpdate(
      BuildContext context, String userName, String email, String referalCode,
      {String? phoneNumber, String? newPassword}) = CustomerDataUpdate;
}
