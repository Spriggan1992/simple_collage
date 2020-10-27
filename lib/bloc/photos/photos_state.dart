part of 'photos_bloc.dart';

@freezed
abstract class PhotosState with _$PhotosState {
  const factory PhotosState({List<Asset> images, LoadedImgs loadedData}) =
      _PhotosState;

  factory PhotosState.initial() =>
      PhotosState(images: [], loadedData: LoadedImgs.uknown);
  factory PhotosState.success() => PhotosState();
}
