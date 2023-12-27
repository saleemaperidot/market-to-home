import 'package:json_annotation/json_annotation.dart';

part 'service.g.dart';

@JsonSerializable()
class Service {
  String? title;
  String? image;

  Service({this.title, this.image});

  factory Service.fromJson(Map<String, dynamic> json) {
    return _$ServiceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}
