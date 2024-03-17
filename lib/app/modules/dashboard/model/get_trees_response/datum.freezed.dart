// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TreeData _$TreeDataFromJson(Map<String, dynamic> json) {
  return _TreeData.fromJson(json);
}

/// @nodoc
mixin _$TreeData {
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreeDataCopyWith<TreeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeDataCopyWith<$Res> {
  factory $TreeDataCopyWith(TreeData value, $Res Function(TreeData) then) =
      _$TreeDataCopyWithImpl<$Res, TreeData>;
  @useResult
  $Res call({String? name, int? price, String? description});
}

/// @nodoc
class _$TreeDataCopyWithImpl<$Res, $Val extends TreeData>
    implements $TreeDataCopyWith<$Res> {
  _$TreeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeDataImplCopyWith<$Res>
    implements $TreeDataCopyWith<$Res> {
  factory _$$TreeDataImplCopyWith(
          _$TreeDataImpl value, $Res Function(_$TreeDataImpl) then) =
      __$$TreeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? price, String? description});
}

/// @nodoc
class __$$TreeDataImplCopyWithImpl<$Res>
    extends _$TreeDataCopyWithImpl<$Res, _$TreeDataImpl>
    implements _$$TreeDataImplCopyWith<$Res> {
  __$$TreeDataImplCopyWithImpl(
      _$TreeDataImpl _value, $Res Function(_$TreeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
  }) {
    return _then(_$TreeDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreeDataImpl implements _TreeData {
  _$TreeDataImpl({this.name, this.price, this.description});

  factory _$TreeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreeDataImplFromJson(json);

  @override
  final String? name;
  @override
  final int? price;
  @override
  final String? description;

  @override
  String toString() {
    return 'TreeData(name: $name, price: $price, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeDataImplCopyWith<_$TreeDataImpl> get copyWith =>
      __$$TreeDataImplCopyWithImpl<_$TreeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreeDataImplToJson(
      this,
    );
  }
}

abstract class _TreeData implements TreeData {
  factory _TreeData(
      {final String? name,
      final int? price,
      final String? description}) = _$TreeDataImpl;

  factory _TreeData.fromJson(Map<String, dynamic> json) =
      _$TreeDataImpl.fromJson;

  @override
  String? get name;
  @override
  int? get price;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$TreeDataImplCopyWith<_$TreeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
