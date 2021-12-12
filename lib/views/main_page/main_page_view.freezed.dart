// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_page_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainPageDataTearOff {
  const _$MainPageDataTearOff();

  _MainPageData call(
      {required NavigationItemId currentNavigationId,
      required List<NavigationItemData> navigationItems}) {
    return _MainPageData(
      currentNavigationId: currentNavigationId,
      navigationItems: navigationItems,
    );
  }
}

/// @nodoc
const $MainPageData = _$MainPageDataTearOff();

/// @nodoc
mixin _$MainPageData {
  NavigationItemId get currentNavigationId =>
      throw _privateConstructorUsedError;
  List<NavigationItemData> get navigationItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageDataCopyWith<MainPageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageDataCopyWith<$Res> {
  factory $MainPageDataCopyWith(
          MainPageData value, $Res Function(MainPageData) then) =
      _$MainPageDataCopyWithImpl<$Res>;
  $Res call(
      {NavigationItemId currentNavigationId,
      List<NavigationItemData> navigationItems});
}

/// @nodoc
class _$MainPageDataCopyWithImpl<$Res> implements $MainPageDataCopyWith<$Res> {
  _$MainPageDataCopyWithImpl(this._value, this._then);

  final MainPageData _value;
  // ignore: unused_field
  final $Res Function(MainPageData) _then;

  @override
  $Res call({
    Object? currentNavigationId = freezed,
    Object? navigationItems = freezed,
  }) {
    return _then(_value.copyWith(
      currentNavigationId: currentNavigationId == freezed
          ? _value.currentNavigationId
          : currentNavigationId // ignore: cast_nullable_to_non_nullable
              as NavigationItemId,
      navigationItems: navigationItems == freezed
          ? _value.navigationItems
          : navigationItems // ignore: cast_nullable_to_non_nullable
              as List<NavigationItemData>,
    ));
  }
}

/// @nodoc
abstract class _$MainPageDataCopyWith<$Res>
    implements $MainPageDataCopyWith<$Res> {
  factory _$MainPageDataCopyWith(
          _MainPageData value, $Res Function(_MainPageData) then) =
      __$MainPageDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {NavigationItemId currentNavigationId,
      List<NavigationItemData> navigationItems});
}

/// @nodoc
class __$MainPageDataCopyWithImpl<$Res> extends _$MainPageDataCopyWithImpl<$Res>
    implements _$MainPageDataCopyWith<$Res> {
  __$MainPageDataCopyWithImpl(
      _MainPageData _value, $Res Function(_MainPageData) _then)
      : super(_value, (v) => _then(v as _MainPageData));

  @override
  _MainPageData get _value => super._value as _MainPageData;

  @override
  $Res call({
    Object? currentNavigationId = freezed,
    Object? navigationItems = freezed,
  }) {
    return _then(_MainPageData(
      currentNavigationId: currentNavigationId == freezed
          ? _value.currentNavigationId
          : currentNavigationId // ignore: cast_nullable_to_non_nullable
              as NavigationItemId,
      navigationItems: navigationItems == freezed
          ? _value.navigationItems
          : navigationItems // ignore: cast_nullable_to_non_nullable
              as List<NavigationItemData>,
    ));
  }
}

/// @nodoc

class _$_MainPageData implements _MainPageData {
  const _$_MainPageData(
      {required this.currentNavigationId, required this.navigationItems});

  @override
  final NavigationItemId currentNavigationId;
  @override
  final List<NavigationItemData> navigationItems;

  @override
  String toString() {
    return 'MainPageData(currentNavigationId: $currentNavigationId, navigationItems: $navigationItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainPageData &&
            const DeepCollectionEquality()
                .equals(other.currentNavigationId, currentNavigationId) &&
            const DeepCollectionEquality()
                .equals(other.navigationItems, navigationItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentNavigationId),
      const DeepCollectionEquality().hash(navigationItems));

  @JsonKey(ignore: true)
  @override
  _$MainPageDataCopyWith<_MainPageData> get copyWith =>
      __$MainPageDataCopyWithImpl<_MainPageData>(this, _$identity);
}

abstract class _MainPageData implements MainPageData {
  const factory _MainPageData(
      {required NavigationItemId currentNavigationId,
      required List<NavigationItemData> navigationItems}) = _$_MainPageData;

  @override
  NavigationItemId get currentNavigationId;
  @override
  List<NavigationItemData> get navigationItems;
  @override
  @JsonKey(ignore: true)
  _$MainPageDataCopyWith<_MainPageData> get copyWith =>
      throw _privateConstructorUsedError;
}
