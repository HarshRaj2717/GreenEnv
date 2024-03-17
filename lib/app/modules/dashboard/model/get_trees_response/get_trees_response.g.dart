// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_trees_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTreesResponseImpl _$$GetTreesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTreesResponseImpl(
      success: json['success'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TreeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetTreesResponseImplToJson(
        _$GetTreesResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
