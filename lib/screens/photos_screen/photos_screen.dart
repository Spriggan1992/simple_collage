import 'package:collage/bloc/photos/photos_bloc.dart';
import 'package:collage/config/status.dart';
import 'package:collage/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'body.dart';

class PhotosScreen extends StatelessWidget {
  static String id = 'photos_screen';
  const PhotosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocConsumer<PhotosBloc, PhotosState>(
          listener: (context, state) {
            if (state.images.isEmpty) {
              Navigator.pushNamed(context, WelcomeScreen.id);
            }
          },
          builder: (context, state) {
            if (state.loadedData == LoadedImgs.failure) {
              return Center(child: CircularProgressIndicator());
            }
            return Body(state: state);
          },
        ),
      ),
    );
  }
}
