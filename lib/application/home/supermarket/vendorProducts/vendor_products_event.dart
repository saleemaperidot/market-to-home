part of 'vendor_products_bloc.dart';

@freezed
class VendorProductsEvent with _$VendorProductsEvent {
  const factory VendorProductsEvent.productInit(
          BuildContext context, String categorySlug, String subCategoryName) =
      ProductInit;
  const factory VendorProductsEvent.getProducts(
      BuildContext context, String categorySlug) = GetProducts;
  const factory VendorProductsEvent.getProductsFromScroll(
      BuildContext context, String categorySlug) = GetProductsFromScroll;
  const factory VendorProductsEvent.getProductDetails(
      BuildContext context, String productId, String from) = GetProductDetails;
  const factory VendorProductsEvent.quantityIncrement(
      BuildContext context, String productId, String from) = QuantityIncrement;

  const factory VendorProductsEvent.quantitydecrement(
      BuildContext context, productId, String from) = QuantityDecrement;

  const factory VendorProductsEvent.addtoWishList(
      String productId, BuildContext context) = AddToWishList;

  const factory VendorProductsEvent.removeFromWishList(
      BuildContext context, String productId) = RemoveFromWishList;

  const factory VendorProductsEvent.addtoWishListFromDetails(
      BuildContext context, String productId) = AddtoWishListFromDetails;

  const factory VendorProductsEvent.removeFromWishListFromDetails(
      BuildContext context, String productId) = RemoveFromWishListFromDetails;

  const factory VendorProductsEvent.cartUpdateChange(
      BuildContext context, String subCategorySlug) = CartUpdateChange;

  const factory VendorProductsEvent.searchResult(String query) = SearchResult;
}
