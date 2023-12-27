// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Filter _$FilterFromJson(Map<String, dynamic> json) => Filter(
      title: json['title'] as String?,
      image: json['image'] as String?,
      sortBy: json['sort_by'] as String?,
    );

Map<String, dynamic> _$FilterToJson(Filter instance) => <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'sort_by': instance.sortBy,
    };
