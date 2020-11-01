part of 'collage_bloc.dart';

@freezed
abstract class CollageEvent with _$CollageEvent {
  const factory CollageEvent.loaded() = _Loaded;
}
