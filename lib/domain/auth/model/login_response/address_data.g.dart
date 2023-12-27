// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDataImpl _$$AddressDataImplFromJson(Map<String, dynamic> json) =>
    _$AddressDataImpl(
      addressId: json['address_id'] as int?,
      customerId: json['customer_id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      streetName: json['street_name'] as String?,
      buildingName: json['building_name'] as String?,
      buildingNo: json['building_no'] as String?,
      contactNumber: json['contact_number'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      address: json['address'] as String?,
      isDefault: json['is_default'] as int?,
    );

Map<String, dynamic> _$$AddressDataImplToJson(_$AddressDataImpl instance) =>
    <String, dynamic>{
      'address_id': instance.addressId,
      'customer_id': instance.customerId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'street_name': instance.streetName,
      'building_name': instance.buildingName,
      'building_no': instance.buildingNo,
      'contact_number': instance.contactNumber,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'is_default': instance.isDefault,
    };
