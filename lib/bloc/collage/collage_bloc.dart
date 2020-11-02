import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collage/bloc/photos/photos_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

part 'collage_event.dart';
part 'collage_state.dart';
part 'collage_bloc.freezed.dart';

class CollageBloc extends Bloc<CollageEvent, CollageState> {
  final PhotosBloc _photosBloc;

  CollageBloc({PhotosBloc photosBloc})
      : _photosBloc = photosBloc,
        super(CollageState());

  @override
  Stream<CollageState> mapEventToState(
    CollageEvent event,
  ) async* {
    yield* event.map(loaded: (event) async* {
      final List<Asset> updateImgs = _photosBloc.state.images;
      yield state.copyWith(images: updateImgs ?? []);
    });
  }
}
