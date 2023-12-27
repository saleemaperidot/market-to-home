part of 'vendor_bloc.dart';

@freezed
class VendorState with _$VendorState {
  const factory VendorState({
    @Default(false) bool stauts,
    @Default(false) bool isLoading,
    // @Default([]) List<Category> vendorCategory,
    @Default([]) List<Filter> vendorFilter,
    @Default([]) List<Datum> vendorList,
    @Default([]) List<Category> category,
    @Default([]) List<SubCategory> subCategory,
    @Default('') String vendorSlug,
    @Default('') String categorySlug,
    @Default('') String vendorShopName,
  }) = _Initial;
}
