import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'get_profile_data_model.freezed.dart';
part 'get_profile_data_model.g.dart';

@freezed
class GetProfileDataModel with _$GetProfileDataModel {
  factory GetProfileDataModel({
    bool? status,
    Data? data,
  }) = _GetProfileDataModel;

  factory GetProfileDataModel.fromJson(Map<String, dynamic> json) =>
      _$GetProfileDataModelFromJson(json);
}
