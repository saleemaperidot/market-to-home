part of 'vendor_bloc.dart';

@freezed
class VendorEvent with _$VendorEvent {
  const factory VendorEvent.init(String shopType) = Init;
  const factory VendorEvent.getVendor(String shopType, {String? filter}) =
      GetVendor;
  const factory VendorEvent.getCategories(
          BuildContext context, String vendorurl, String vendorShopName) =
      GetCategories;
  const factory VendorEvent.getSubCategories(
      BuildContext context,
      String categorySlug,
      List<SubCategory> subCategoryList) = GetSubCategories;
}
