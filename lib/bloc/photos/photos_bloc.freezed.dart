// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PhotosEventTearOff {
  const _$PhotosEventTearOff();

// ignore: unused_element
  LoadeImgs loadeImgs() {
    return const LoadeImgs();
  }

// ignore: unused_element
  DeleteImg deleteImg(Asset img) {
    return DeleteImg(
      img,
    );
  }

// ignore: unused_element
  UpdateImg updateImg() {
    return const UpdateImg();
  }
}

/// @nodoc
// ignore: unused_element
const $PhotosEvent = _$PhotosEventTearOff();

/// @nodoc
mixin _$PhotosEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadeImgs(),
    @required Result deleteImg(Asset img),
    @required Result updateImg(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadeImgs(),
    Result deleteImg(Asset img),
    Result updateImg(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadeImgs(LoadeImgs value),
    @required Result deleteImg(DeleteImg value),
    @required Result updateImg(UpdateImg value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadeImgs(LoadeImgs value),
    Result deleteImg(DeleteImg value),
    Result updateImg(UpdateImg value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PhotosEventCopyWith<$Res> {
  factory $PhotosEventCopyWith(
          PhotosEvent value, $Res Function(PhotosEvent) then) =
      _$PhotosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotosEventCopyWithImpl<$Res> implements $PhotosEventCopyWith<$Res> {
  _$PhotosEventCopyWithImpl(this._value, this._then);

  final PhotosEvent _value;
  // ignore: unused_field
  final $Res Function(PhotosEvent) _then;
}

/// @nodoc
abstract class $LoadeImgsCopyWith<$Res> {
  factory $LoadeImgsCopyWith(LoadeImgs value, $Res Function(LoadeImgs) then) =
      _$LoadeImgsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadeImgsCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements $LoadeImgsCopyWith<$Res> {
  _$LoadeImgsCopyWithImpl(LoadeImgs _value, $Res Function(LoadeImgs) _then)
      : super(_value, (v) => _then(v as LoadeImgs));

  @override
  LoadeImgs get _value => super._value as LoadeImgs;
}

/// @nodoc
class _$LoadeImgs implements LoadeImgs {
  const _$LoadeImgs();

  @override
  String toString() {
    return 'PhotosEvent.loadeImgs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadeImgs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadeImgs(),
    @required Result deleteImg(Asset img),
    @required Result updateImg(),
  }) {
    assert(loadeImgs != null);
    assert(deleteImg != null);
    assert(updateImg != null);
    return loadeImgs();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadeImgs(),
    Result deleteImg(Asset img),
    Result updateImg(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadeImgs != null) {
      return loadeImgs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadeImgs(LoadeImgs value),
    @required Result deleteImg(DeleteImg value),
    @required Result updateImg(UpdateImg value),
  }) {
    assert(loadeImgs != null);
    assert(deleteImg != null);
    assert(updateImg != null);
    return loadeImgs(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadeImgs(LoadeImgs value),
    Result deleteImg(DeleteImg value),
    Result updateImg(UpdateImg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadeImgs != null) {
      return loadeImgs(this);
    }
    return orElse();
  }
}

abstract class LoadeImgs implements PhotosEvent {
  const factory LoadeImgs() = _$LoadeImgs;
}

/// @nodoc
abstract class $DeleteImgCopyWith<$Res> {
  factory $DeleteImgCopyWith(DeleteImg value, $Res Function(DeleteImg) then) =
      _$DeleteImgCopyWithImpl<$Res>;
  $Res call({Asset img});
}

/// @nodoc
class _$DeleteImgCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements $DeleteImgCopyWith<$Res> {
  _$DeleteImgCopyWithImpl(DeleteImg _value, $Res Function(DeleteImg) _then)
      : super(_value, (v) => _then(v as DeleteImg));

  @override
  DeleteImg get _value => super._value as DeleteImg;

  @override
  $Res call({
    Object img = freezed,
  }) {
    return _then(DeleteImg(
      img == freezed ? _value.img : img as Asset,
    ));
  }
}

/// @nodoc
class _$DeleteImg implements DeleteImg {
  const _$DeleteImg(this.img) : assert(img != null);

  @override
  final Asset img;

  @override
  String toString() {
    return 'PhotosEvent.deleteImg(img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteImg &&
            (identical(other.img, img) ||
                const DeepCollectionEquality().equals(other.img, img)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(img);

  @override
  $DeleteImgCopyWith<DeleteImg> get copyWith =>
      _$DeleteImgCopyWithImpl<DeleteImg>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadeImgs(),
    @required Result deleteImg(Asset img),
    @required Result updateImg(),
  }) {
    assert(loadeImgs != null);
    assert(deleteImg != null);
    assert(updateImg != null);
    return deleteImg(img);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadeImgs(),
    Result deleteImg(Asset img),
    Result updateImg(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteImg != null) {
      return deleteImg(img);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadeImgs(LoadeImgs value),
    @required Result deleteImg(DeleteImg value),
    @required Result updateImg(UpdateImg value),
  }) {
    assert(loadeImgs != null);
    assert(deleteImg != null);
    assert(updateImg != null);
    return deleteImg(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadeImgs(LoadeImgs value),
    Result deleteImg(DeleteImg value),
    Result updateImg(UpdateImg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteImg != null) {
      return deleteImg(this);
    }
    return orElse();
  }
}

abstract class DeleteImg implements PhotosEvent {
  const factory DeleteImg(Asset img) = _$DeleteImg;

  Asset get img;
  $DeleteImgCopyWith<DeleteImg> get copyWith;
}

/// @nodoc
abstract class $UpdateImgCopyWith<$Res> {
  factory $UpdateImgCopyWith(UpdateImg value, $Res Function(UpdateImg) then) =
      _$UpdateImgCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateImgCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements $UpdateImgCopyWith<$Res> {
  _$UpdateImgCopyWithImpl(UpdateImg _value, $Res Function(UpdateImg) _then)
      : super(_value, (v) => _then(v as UpdateImg));

  @override
  UpdateImg get _value => super._value as UpdateImg;
}

/// @nodoc
class _$UpdateImg implements UpdateImg {
  const _$UpdateImg();

  @override
  String toString() {
    return 'PhotosEvent.updateImg()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateImg);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadeImgs(),
    @required Result deleteImg(Asset img),
    @required Result updateImg(),
  }) {
    assert(loadeImgs != null);
    assert(deleteImg != null);
    assert(updateImg != null);
    return updateImg();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadeImgs(),
    Result deleteImg(Asset img),
    Result updateImg(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateImg != null) {
      return updateImg();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadeImgs(LoadeImgs value),
    @required Result deleteImg(DeleteImg value),
    @required Result updateImg(UpdateImg value),
  }) {
    assert(loadeImgs != null);
    assert(deleteImg != null);
    assert(updateImg != null);
    return updateImg(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadeImgs(LoadeImgs value),
    Result deleteImg(DeleteImg value),
    Result updateImg(UpdateImg value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateImg != null) {
      return updateImg(this);
    }
    return orElse();
  }
}

abstract class UpdateImg implements PhotosEvent {
  const factory UpdateImg() = _$UpdateImg;
}

/// @nodoc
class _$PhotosStateTearOff {
  const _$PhotosStateTearOff();

// ignore: unused_element
  _PhotosState call({List<Asset> images, LoadedImgs loadedData}) {
    return _PhotosState(
      images: images,
      loadedData: loadedData,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PhotosState = _$PhotosStateTearOff();

/// @nodoc
mixin _$PhotosState {
  List<Asset> get images;
  LoadedImgs get loadedData;

  $PhotosStateCopyWith<PhotosState> get copyWith;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res>;
  $Res call({List<Asset> images, LoadedImgs loadedData});
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res> implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  final PhotosState _value;
  // ignore: unused_field
  final $Res Function(PhotosState) _then;

  @override
  $Res call({
    Object images = freezed,
    Object loadedData = freezed,
  }) {
    return _then(_value.copyWith(
      images: images == freezed ? _value.images : images as List<Asset>,
      loadedData:
          loadedData == freezed ? _value.loadedData : loadedData as LoadedImgs,
    ));
  }
}

/// @nodoc
abstract class _$PhotosStateCopyWith<$Res>
    implements $PhotosStateCopyWith<$Res> {
  factory _$PhotosStateCopyWith(
          _PhotosState value, $Res Function(_PhotosState) then) =
      __$PhotosStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Asset> images, LoadedImgs loadedData});
}

/// @nodoc
class __$PhotosStateCopyWithImpl<$Res> extends _$PhotosStateCopyWithImpl<$Res>
    implements _$PhotosStateCopyWith<$Res> {
  __$PhotosStateCopyWithImpl(
      _PhotosState _value, $Res Function(_PhotosState) _then)
      : super(_value, (v) => _then(v as _PhotosState));

  @override
  _PhotosState get _value => super._value as _PhotosState;

  @override
  $Res call({
    Object images = freezed,
    Object loadedData = freezed,
  }) {
    return _then(_PhotosState(
      images: images == freezed ? _value.images : images as List<Asset>,
      loadedData:
          loadedData == freezed ? _value.loadedData : loadedData as LoadedImgs,
    ));
  }
}

/// @nodoc
class _$_PhotosState implements _PhotosState {
  const _$_PhotosState({this.images, this.loadedData});

  @override
  final List<Asset> images;
  @override
  final LoadedImgs loadedData;

  @override
  String toString() {
    return 'PhotosState(images: $images, loadedData: $loadedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotosState &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.loadedData, loadedData) ||
                const DeepCollectionEquality()
                    .equals(other.loadedData, loadedData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(loadedData);

  @override
  _$PhotosStateCopyWith<_PhotosState> get copyWith =>
      __$PhotosStateCopyWithImpl<_PhotosState>(this, _$identity);
}

abstract class _PhotosState implements PhotosState {
  const factory _PhotosState({List<Asset> images, LoadedImgs loadedData}) =
      _$_PhotosState;

  @override
  List<Asset> get images;
  @override
  LoadedImgs get loadedData;
  @override
  _$PhotosStateCopyWith<_PhotosState> get copyWith;
}
