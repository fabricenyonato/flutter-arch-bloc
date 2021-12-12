// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoreDataTearOff {
  const _$StoreDataTearOff();

  _StoreData call({required DataState<ProductListResponse> products}) {
    return _StoreData(
      products: products,
    );
  }
}

/// @nodoc
const $StoreData = _$StoreDataTearOff();

/// @nodoc
mixin _$StoreData {
  DataState<ProductListResponse> get products =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreDataCopyWith<StoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDataCopyWith<$Res> {
  factory $StoreDataCopyWith(StoreData value, $Res Function(StoreData) then) =
      _$StoreDataCopyWithImpl<$Res>;
  $Res call({DataState<ProductListResponse> products});

  $DataStateCopyWith<ProductListResponse, $Res> get products;
}

/// @nodoc
class _$StoreDataCopyWithImpl<$Res> implements $StoreDataCopyWith<$Res> {
  _$StoreDataCopyWithImpl(this._value, this._then);

  final StoreData _value;
  // ignore: unused_field
  final $Res Function(StoreData) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as DataState<ProductListResponse>,
    ));
  }

  @override
  $DataStateCopyWith<ProductListResponse, $Res> get products {
    return $DataStateCopyWith<ProductListResponse, $Res>(_value.products,
        (value) {
      return _then(_value.copyWith(products: value));
    });
  }
}

/// @nodoc
abstract class _$StoreDataCopyWith<$Res> implements $StoreDataCopyWith<$Res> {
  factory _$StoreDataCopyWith(
          _StoreData value, $Res Function(_StoreData) then) =
      __$StoreDataCopyWithImpl<$Res>;
  @override
  $Res call({DataState<ProductListResponse> products});

  @override
  $DataStateCopyWith<ProductListResponse, $Res> get products;
}

/// @nodoc
class __$StoreDataCopyWithImpl<$Res> extends _$StoreDataCopyWithImpl<$Res>
    implements _$StoreDataCopyWith<$Res> {
  __$StoreDataCopyWithImpl(_StoreData _value, $Res Function(_StoreData) _then)
      : super(_value, (v) => _then(v as _StoreData));

  @override
  _StoreData get _value => super._value as _StoreData;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_StoreData(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as DataState<ProductListResponse>,
    ));
  }
}

/// @nodoc

class _$_StoreData implements _StoreData {
  const _$_StoreData({required this.products});

  @override
  final DataState<ProductListResponse> products;

  @override
  String toString() {
    return 'StoreData(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreData &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$StoreDataCopyWith<_StoreData> get copyWith =>
      __$StoreDataCopyWithImpl<_StoreData>(this, _$identity);
}

abstract class _StoreData implements StoreData {
  const factory _StoreData({required DataState<ProductListResponse> products}) =
      _$_StoreData;

  @override
  DataState<ProductListResponse> get products;
  @override
  @JsonKey(ignore: true)
  _$StoreDataCopyWith<_StoreData> get copyWith =>
      throw _privateConstructorUsedError;
}
