// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['id'] as int?,
      numberOfTrees: json['number_of_trees'] as int?,
      user: json['user'] as String?,
      tree: json['tree'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number_of_trees': instance.numberOfTrees,
      'user': instance.user,
      'tree': instance.tree,
    };
