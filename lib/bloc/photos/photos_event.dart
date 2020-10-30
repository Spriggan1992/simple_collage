part of 'photos_bloc.dart';

@freezed
abstract class PhotosEvent with _$PhotosEvent {
  const factory PhotosEvent.loadeImgs() = LoadeImgs;
  const factory PhotosEvent.deleteImg(Asset img) = DeleteImg;
  const factory PhotosEvent.updateImg() = UpdateImg;
}
