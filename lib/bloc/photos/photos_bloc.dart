import 'dart:async';
import 'package:collage/config/status.dart';
import 'package:collage/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

part 'photos_event.dart';
part 'photos_state.dart';

part 'photos_bloc.freezed.dart';

@injectable
class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotosRepository _photosRepository;
  PhotosBloc({
    PhotosRepository photosRepository,
  })  : _photosRepository = photosRepository,
        super(PhotosState.initial());

  @override
  Stream<PhotosState> mapEventToState(PhotosEvent event) async* {
    yield* event.map(
      loadeImgs: (event) async* {
        final List<Asset> fetchedImgs = await _photosRepository.getImgs();
        if (fetchedImgs == null || fetchedImgs.isEmpty) {
          yield state.copyWith(loadedData: LoadedImgs.failure, images: []);
        } else {
          yield state.copyWith(
              loadedData: LoadedImgs.failure, images: fetchedImgs);
        }
      },
    );
  }
}
