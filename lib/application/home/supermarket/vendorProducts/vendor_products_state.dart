part of 'vendor_products_bloc.dart';

@freezed
class VendorProductsState with _$VendorProductsState {
  const factory VendorProductsState(
      {@Default(false) bool stauts,
      @Default(false) bool isLoading,
      @Default(false) bool isScrollingLoading,
      VendorProductDetailsData? productDetailsData,
      @Default([]) List<ProductDatumFreezed> productData,
      @Default('') String subCategorySlug,
      @Default('') String selectedSubCategory,
      @Default('') String subCategoryName,
      @Default([]) List<Product> searchProductList}) = _Initial;
}
