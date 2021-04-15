// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeDetailEventTearOff {
  const _$HomeDetailEventTearOff();

  _Initialize initialize(int itemId) {
    return _Initialize(
      itemId,
    );
  }

  _Like like([int? rating]) {
    return _Like(
      rating,
    );
  }

  _Back back() {
    return const _Back();
  }
}

/// @nodoc
const $HomeDetailEvent = _$HomeDetailEventTearOff();

/// @nodoc
mixin _$HomeDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) initialize,
    required TResult Function(int? rating) like,
    required TResult Function() back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? initialize,
    TResult Function(int? rating)? like,
    TResult Function()? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Like value) like,
    required TResult Function(_Back value) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Like value)? like,
    TResult Function(_Back value)? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDetailEventCopyWith<$Res> {
  factory $HomeDetailEventCopyWith(
          HomeDetailEvent value, $Res Function(HomeDetailEvent) then) =
      _$HomeDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeDetailEventCopyWithImpl<$Res>
    implements $HomeDetailEventCopyWith<$Res> {
  _$HomeDetailEventCopyWithImpl(this._value, this._then);

  final HomeDetailEvent _value;
  // ignore: unused_field
  final $Res Function(HomeDetailEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({int itemId});
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    extends _$HomeDetailEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(_Initialize(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_Initialize implements _Initialize {
  const _$_Initialize(this.itemId);

  @override
  final int itemId;

  @override
  String toString() {
    return 'HomeDetailEvent.initialize(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialize &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemId);

  @JsonKey(ignore: true)
  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) initialize,
    required TResult Function(int? rating) like,
    required TResult Function() back,
  }) {
    return initialize(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? initialize,
    TResult Function(int? rating)? like,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Like value) like,
    required TResult Function(_Back value) back,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Like value)? like,
    TResult Function(_Back value)? back,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements HomeDetailEvent {
  const factory _Initialize(int itemId) = _$_Initialize;

  int get itemId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikeCopyWith<$Res> {
  factory _$LikeCopyWith(_Like value, $Res Function(_Like) then) =
      __$LikeCopyWithImpl<$Res>;
  $Res call({int? rating});
}

/// @nodoc
class __$LikeCopyWithImpl<$Res> extends _$HomeDetailEventCopyWithImpl<$Res>
    implements _$LikeCopyWith<$Res> {
  __$LikeCopyWithImpl(_Like _value, $Res Function(_Like) _then)
      : super(_value, (v) => _then(v as _Like));

  @override
  _Like get _value => super._value as _Like;

  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_Like(
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
class _$_Like implements _Like {
  const _$_Like([this.rating]);

  @override
  final int? rating;

  @override
  String toString() {
    return 'HomeDetailEvent.like(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Like &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$LikeCopyWith<_Like> get copyWith =>
      __$LikeCopyWithImpl<_Like>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) initialize,
    required TResult Function(int? rating) like,
    required TResult Function() back,
  }) {
    return like(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? initialize,
    TResult Function(int? rating)? like,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Like value) like,
    required TResult Function(_Back value) back,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Like value)? like,
    TResult Function(_Back value)? back,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class _Like implements HomeDetailEvent {
  const factory _Like([int? rating]) = _$_Like;

  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikeCopyWith<_Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BackCopyWith<$Res> {
  factory _$BackCopyWith(_Back value, $Res Function(_Back) then) =
      __$BackCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackCopyWithImpl<$Res> extends _$HomeDetailEventCopyWithImpl<$Res>
    implements _$BackCopyWith<$Res> {
  __$BackCopyWithImpl(_Back _value, $Res Function(_Back) _then)
      : super(_value, (v) => _then(v as _Back));

  @override
  _Back get _value => super._value as _Back;
}

/// @nodoc
class _$_Back implements _Back {
  const _$_Back();

  @override
  String toString() {
    return 'HomeDetailEvent.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Back);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) initialize,
    required TResult Function(int? rating) like,
    required TResult Function() back,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? initialize,
    TResult Function(int? rating)? like,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Like value) like,
    required TResult Function(_Back value) back,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Like value)? like,
    TResult Function(_Back value)? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class _Back implements HomeDetailEvent {
  const factory _Back() = _$_Back;
}

/// @nodoc
class _$HomeDetailStateTearOff {
  const _$HomeDetailStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Initializing initializing() {
    return const _Initializing();
  }

  _Liking liking() {
    return const _Liking();
  }

  _Initialized initialized() {
    return const _Initialized();
  }

  _Liked liked(int rating) {
    return _Liked(
      rating,
    );
  }
}

/// @nodoc
const $HomeDetailState = _$HomeDetailStateTearOff();

/// @nodoc
mixin _$HomeDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() liking,
    required TResult Function() initialized,
    required TResult Function(int rating) liked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? liking,
    TResult Function()? initialized,
    TResult Function(int rating)? liked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Liking value) liking,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Liking value)? liking,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDetailStateCopyWith<$Res> {
  factory $HomeDetailStateCopyWith(
          HomeDetailState value, $Res Function(HomeDetailState) then) =
      _$HomeDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeDetailStateCopyWithImpl<$Res>
    implements $HomeDetailStateCopyWith<$Res> {
  _$HomeDetailStateCopyWithImpl(this._value, this._then);

  final HomeDetailState _value;
  // ignore: unused_field
  final $Res Function(HomeDetailState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeDetailStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() liking,
    required TResult Function() initialized,
    required TResult Function(int rating) liked,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? liking,
    TResult Function()? initialized,
    TResult Function(int rating)? liked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Liking value) liking,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Liking value)? liking,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeDetailState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InitializingCopyWith<$Res> {
  factory _$InitializingCopyWith(
          _Initializing value, $Res Function(_Initializing) then) =
      __$InitializingCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializingCopyWithImpl<$Res>
    extends _$HomeDetailStateCopyWithImpl<$Res>
    implements _$InitializingCopyWith<$Res> {
  __$InitializingCopyWithImpl(
      _Initializing _value, $Res Function(_Initializing) _then)
      : super(_value, (v) => _then(v as _Initializing));

  @override
  _Initializing get _value => super._value as _Initializing;
}

@Implements(LoadingState)

/// @nodoc
class _$_Initializing implements _Initializing {
  const _$_Initializing();

  @override
  String toString() {
    return 'HomeDetailState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() liking,
    required TResult Function() initialized,
    required TResult Function(int rating) liked,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? liking,
    TResult Function()? initialized,
    TResult Function(int rating)? liked,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Liking value) liking,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Liking value)? liking,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class _Initializing implements HomeDetailState, LoadingState {
  const factory _Initializing() = _$_Initializing;
}

/// @nodoc
abstract class _$LikingCopyWith<$Res> {
  factory _$LikingCopyWith(_Liking value, $Res Function(_Liking) then) =
      __$LikingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikingCopyWithImpl<$Res> extends _$HomeDetailStateCopyWithImpl<$Res>
    implements _$LikingCopyWith<$Res> {
  __$LikingCopyWithImpl(_Liking _value, $Res Function(_Liking) _then)
      : super(_value, (v) => _then(v as _Liking));

  @override
  _Liking get _value => super._value as _Liking;
}

@Implements(LoadingState)

/// @nodoc
class _$_Liking implements _Liking {
  const _$_Liking();

  @override
  String toString() {
    return 'HomeDetailState.liking()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Liking);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() liking,
    required TResult Function() initialized,
    required TResult Function(int rating) liked,
  }) {
    return liking();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? liking,
    TResult Function()? initialized,
    TResult Function(int rating)? liked,
    required TResult orElse(),
  }) {
    if (liking != null) {
      return liking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Liking value) liking,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
  }) {
    return liking(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Liking value)? liking,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    required TResult orElse(),
  }) {
    if (liking != null) {
      return liking(this);
    }
    return orElse();
  }
}

abstract class _Liking implements HomeDetailState, LoadingState {
  const factory _Liking() = _$_Liking;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$HomeDetailStateCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

@Implements(PageState)

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'HomeDetailState.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() liking,
    required TResult Function() initialized,
    required TResult Function(int rating) liked,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? liking,
    TResult Function()? initialized,
    TResult Function(int rating)? liked,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Liking value) liking,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Liking value)? liking,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements HomeDetailState, PageState {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  $Res call({int rating});
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$HomeDetailStateCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_Liked(
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@Implements(PageState)

/// @nodoc
class _$_Liked implements _Liked {
  const _$_Liked(this.rating);

  @override
  final int rating;

  @override
  String toString() {
    return 'HomeDetailState.liked(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Liked &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initializing,
    required TResult Function() liking,
    required TResult Function() initialized,
    required TResult Function(int rating) liked,
  }) {
    return liked(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initializing,
    TResult Function()? liking,
    TResult Function()? initialized,
    TResult Function(int rating)? liked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Initializing value) initializing,
    required TResult Function(_Liking value) liking,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Initializing value)? initializing,
    TResult Function(_Liking value)? liking,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements HomeDetailState, PageState {
  const factory _Liked(int rating) = _$_Liked;

  int get rating => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikedCopyWith<_Liked> get copyWith => throw _privateConstructorUsedError;
}
