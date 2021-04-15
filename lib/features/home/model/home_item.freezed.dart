// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeItemTearOff {
  const _$HomeItemTearOff();

  _HomeItem call(int id, String title) {
    return _HomeItem(
      id,
      title,
    );
  }
}

/// @nodoc
const $HomeItem = _$HomeItemTearOff();

/// @nodoc
mixin _$HomeItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeItemCopyWith<HomeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeItemCopyWith<$Res> {
  factory $HomeItemCopyWith(HomeItem value, $Res Function(HomeItem) then) =
      _$HomeItemCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$HomeItemCopyWithImpl<$Res> implements $HomeItemCopyWith<$Res> {
  _$HomeItemCopyWithImpl(this._value, this._then);

  final HomeItem _value;
  // ignore: unused_field
  final $Res Function(HomeItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeItemCopyWith<$Res> implements $HomeItemCopyWith<$Res> {
  factory _$HomeItemCopyWith(_HomeItem value, $Res Function(_HomeItem) then) =
      __$HomeItemCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$HomeItemCopyWithImpl<$Res> extends _$HomeItemCopyWithImpl<$Res>
    implements _$HomeItemCopyWith<$Res> {
  __$HomeItemCopyWithImpl(_HomeItem _value, $Res Function(_HomeItem) _then)
      : super(_value, (v) => _then(v as _HomeItem));

  @override
  _HomeItem get _value => super._value as _HomeItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_HomeItem(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_HomeItem implements _HomeItem {
  const _$_HomeItem(this.id, this.title);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'HomeItem(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$HomeItemCopyWith<_HomeItem> get copyWith =>
      __$HomeItemCopyWithImpl<_HomeItem>(this, _$identity);
}

abstract class _HomeItem implements HomeItem {
  const factory _HomeItem(int id, String title) = _$_HomeItem;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeItemCopyWith<_HomeItem> get copyWith =>
      throw _privateConstructorUsedError;
}
