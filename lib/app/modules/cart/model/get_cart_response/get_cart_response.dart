// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';

part 'get_cart_response.freezed.dart';
part 'get_cart_response.g.dart';

@freezed
class GetCartResponse with _$GetCartResponse {
  factory GetCartResponse({
    int? success,
    @JsonKey(name: 'cart_amount') int? cartAmount,
    List<Datum>? data,
  }) = _GetCartResponse;

  factory GetCartResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCartResponseFromJson(json);
}
