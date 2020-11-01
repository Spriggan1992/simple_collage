// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'collage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CollageEventTearOff {
  const _$CollageEventTearOff();

// ignore: unused_element
  _Loaded loaded() {
    return const _Loaded();
  }
}

/// @nodoc
// ignore: unused_element
const $CollageEvent = _$CollageEventTearOff();

/// @nodoc
mixin _$CollageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loaded(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loaded(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loaded(_Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loaded(_Loaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CollageEventCopyWith<$Res> {
  factory $CollageEventCopyWith(
          CollageEvent value, $Res Function(CollageEvent) then) =
      _$CollageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollageEventCopyWithImpl<$Res> implements $CollageEventCopyWith<$Res> {
  _$CollageEventCopyWithImpl(this._value, this._then);

  final CollageEvent _value;
  // ignore: unused_field
  final $Res Function(CollageEvent) _then;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$CollageEventCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'CollageEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loaded(),
  }) {
    assert(loaded != null);
    return loaded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loaded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loaded(_Loaded value),
  }) {
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CollageEvent {
  const factory _Loaded() = _$_Loaded;
}

/// @nodoc
class _$CollageStateTearOff {
  const _$CollageStateTearOff();

// ignore: unused_element
  _CollageState call({List<Asset> images}) {
    return _CollageState(
      images: images,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CollageState = _$CollageStateTearOff();

/// @nodoc
mixin _$CollageState {
  List<Asset> get images;

  $CollageStateCopyWith<CollageState> get copyWith;
}

/// @nodoc
abstract class $CollageStateCopyWith<$Res> {
  factory $CollageStateCopyWith(
          CollageState value, $Res Function(CollageState) then) =
      _$CollageStateCopyWithImpl<$Res>;
  $Res call({List<Asset> images});
}

/// @nodoc
class _$CollageStateCopyWithImpl<$Res> implements $CollageStateCopyWith<$Res> {
  _$CollageStateCopyWithImpl(this._value, this._then);

  final CollageState _value;
  // ignore: unused_field
  final $Res Function(CollageState) _then;

  @override
  $Res call({
    Object images = freezed,
  }) {
    return _then(_value.copyWith(
      images: images == freezed ? _value.images : images as List<Asset>,
    ));
  }
}

/// @nodoc
abstract class _$CollageStateCopyWith<$Res>
    implements $CollageStateCopyWith<$Res> {
  factory _$CollageStateCopyWith(
          _CollageState value, $Res Function(_CollageState) then) =
      __$CollageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Asset> images});
}

/// @nodoc
class __$CollageStateCopyWithImpl<$Res> extends _$CollageStateCopyWithImpl<$Res>
    implements _$CollageStateCopyWith<$Res> {
  __$CollageStateCopyWithImpl(
      _CollageState _value, $Res Function(_CollageState) _then)
      : super(_value, (v) => _then(v as _CollageState));

  @override
  _CollageState get _value => super._value as _CollageState;

  @override
  $Res call({
    Object images = freezed,
  }) {
    return _then(_CollageState(
      images: images == freezed ? _value.images : images as List<Asset>,
    ));
  }
}

/// @nodoc
class _$_CollageState implements _CollageState {
  const _$_CollageState({this.images});

  @override
  final List<Asset> images;

  @override
  String toString() {
    return 'CollageState(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CollageState &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @override
  _$CollageStateCopyWith<_CollageState> get copyWith =>
      __$CollageStateCopyWithImpl<_CollageState>(this, _$identity);
}

abstract class _CollageState implements CollageState {
  const factory _CollageState({List<Asset> images}) = _$_CollageState;

  @override
  List<Asset> get images;
  @override
  _$CollageStateCopyWith<_CollageState> get copyWith;
}
