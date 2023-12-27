import 'package:json_annotation/json_annotation.dart';

part 'filter.g.dart';

@JsonSerializable()
class Filter {
  String? title;
  String? image;
  @JsonKey(name: 'sort_by')
  String? sortBy;

  Filter({this.title, this.image, this.sortBy});

  factory Filter.fromJson(Map<String, dynamic> json) {
    return _$FilterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FilterToJson(this);
}
