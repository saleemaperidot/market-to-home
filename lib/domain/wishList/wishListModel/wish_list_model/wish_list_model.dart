import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';

part 'wish_list_model.freezed.dart';
part 'wish_list_model.g.dart';

@freezed
class WishListModel with _$WishListModel {
  factory WishListModel({
    bool? status,
    List<WishListData>? data,
  }) = _WishListModel;

  factory WishListModel.fromJson(Map<String, dynamic> json) =>
      _$WishListModelFromJson(json);
}
