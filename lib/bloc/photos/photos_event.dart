part of 'photos_bloc.dart';

@freezed
abstract class PhotosEvent with _$PhotosEvent {
  const factory PhotosEvent.loadeImgs() = LoadeImgs;
  // const factory PhotosEvent.deleteImg(int indx) = DeleteImg;
}
