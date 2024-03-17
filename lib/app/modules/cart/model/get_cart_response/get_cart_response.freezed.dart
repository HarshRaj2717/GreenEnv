// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCartResponse _$GetCartResponseFromJson(Map<String, dynamic> json) {
  return _GetCartResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCartResponse {
  int? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_amount')
  int? get cartAmount => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCartResponseCopyWith<GetCartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCartResponseCopyWith<$Res> {
  factory $GetCartResponseCopyWith(
          GetCartResponse value, $Res Function(GetCartResponse) then) =
      _$GetCartResponseCopyWithImpl<$Res, GetCartResponse>;
  @useResult
  $Res call(
      {int? success,
      @JsonKey(name: 'cart_amount') int? cartAmount,
      List<Datum>? data});
}

/// @nodoc
class _$GetCartResponseCopyWithImpl<$Res, $Val extends GetCartResponse>
    implements $GetCartResponseCopyWith<$Res> {
  _$GetCartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? cartAmount = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int?,
      cartAmount: freezed == cartAmount
          ? _value.cartAmount
          : cartAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCartResponseImplCopyWith<$Res>
    implements $GetCartResponseCopyWith<$Res> {
  factory _$$GetCartResponseImplCopyWith(_$GetCartResponseImpl value,
          $Res Function(_$GetCartResponseImpl) then) =
      __$$GetCartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? success,
      @JsonKey(name: 'cart_amount') int? cartAmount,
      List<Datum>? data});
}

/// @nodoc
class __$$GetCartResponseImplCopyWithImpl<$Res>
    extends _$GetCartResponseCopyWithImpl<$Res, _$GetCartResponseImpl>
    implements _$$GetCartResponseImplCopyWith<$Res> {
  __$$GetCartResponseImplCopyWithImpl(
      _$GetCartResponseImpl _value, $Res Function(_$GetCartResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? cartAmount = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetCartResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int?,
      cartAmount: freezed == cartAmount
          ? _value.cartAmount
          : cartAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCartResponseImpl implements _GetCartResponse {
  _$GetCartResponseImpl(
      {this.success,
      @JsonKey(name: 'cart_amount') this.cartAmount,
      final List<Datum>? data})
      : _data = data;

  factory _$GetCartResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCartResponseImplFromJson(json);

  @override
  final int? success;
  @override
  @JsonKey(name: 'cart_amount')
  final int? cartAmount;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetCartResponse(success: $success, cartAmount: $cartAmount, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.cartAmount, cartAmount) ||
                other.cartAmount == cartAmount) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, cartAmount,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartResponseImplCopyWith<_$GetCartResponseImpl> get copyWith =>
      __$$GetCartResponseImplCopyWithImpl<_$GetCartResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCartResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCartResponse implements GetCartResponse {
  factory _GetCartResponse(
      {final int? success,
      @JsonKey(name: 'cart_amount') final int? cartAmount,
      final List<Datum>? data}) = _$GetCartResponseImpl;

  factory _GetCartResponse.fromJson(Map<String, dynamic> json) =
      _$GetCartResponseImpl.fromJson;

  @override
  int? get success;
  @override
  @JsonKey(name: 'cart_amount')
  int? get cartAmount;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCartResponseImplCopyWith<_$GetCartResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
