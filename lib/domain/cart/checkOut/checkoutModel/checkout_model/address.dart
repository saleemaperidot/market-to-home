import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    @JsonKey(name: 'address_id') int? addressId,
    @JsonKey(name: 'customer_id') int? customerId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'street_name') String? streetName,
    @JsonKey(name: 'building_name') String? buildingName,
    @JsonKey(name: 'building_no') String? buildingNo,
    @JsonKey(name: 'contact_number') String? contactNumber,
    String? latitude,
    String? longitude,
    String? address,
    @JsonKey(name: 'is_default') int? isDefault,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
