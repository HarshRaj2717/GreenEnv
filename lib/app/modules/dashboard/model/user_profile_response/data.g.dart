// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      apiToken: json['api_token'] as String?,
      verified: json['verified'] as bool?,
      curCode: json['cur_code'] as String?,
      active: json['active'] as bool?,
      name: json['name'] as String?,
      dob: json['dob'],
      address: json['address'] as String?,
      zipCode: json['zip_code'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'api_token': instance.apiToken,
      'verified': instance.verified,
      'cur_code': instance.curCode,
      'active': instance.active,
      'name': instance.name,
      'dob': instance.dob,
      'address': instance.address,
      'zip_code': instance.zipCode,
      'city': instance.city,
      'state': instance.state,
    };
