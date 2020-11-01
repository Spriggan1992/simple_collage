part of 'collage_bloc.dart';

@freezed
abstract class CollageState with _$CollageState {
  const factory CollageState({List<Asset> images}) = _CollageState;
  // const factory CollageState.initial() = _Initial;
}
