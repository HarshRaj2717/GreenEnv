// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCartResponseImpl _$$GetCartResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCartResponseImpl(
      success: json['success'] as int?,
      cartAmount: json['cart_amount'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetCartResponseImplToJson(
        _$GetCartResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'cart_amount': instance.cartAmount,
      'data': instance.data,
    };
