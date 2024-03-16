// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    String? email,
    String? password,
    @JsonKey(name: 'api_token') String? apiToken,
    bool? verified,
    @JsonKey(name: 'cur_code') String? curCode,
    bool? active,
    String? name,
    dynamic dob,
    String? address,
    @JsonKey(name: 'zip_code') String? zipCode,
    String? city,
    String? state,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
