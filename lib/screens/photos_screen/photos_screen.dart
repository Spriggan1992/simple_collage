import 'package:collage/bloc/photos/photos_bloc.dart';
import 'package:collage/config/config.dart';
import 'package:collage/design/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotosScreen extends StatelessWidget {
  static String id = 'photos_screen';
  const PhotosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocConsumer<PhotosBloc, PhotosState>(
          listener: (context, state) {
            // if (state.images == null) {
            //   Navigator.pop(context);
            // }
          },
          builder: (context, state) {
            print(state.loadedData);
            return Container(
              width: SizeConfig.blockSizeHorizontal * 100,
              height: SizeConfig.blockSizeVertical * 100,
              decoration: BoxDecoration(
                gradient: DesignTheme.colors.mainGradientColor,
              ),
              child: Text('Hey there!'),
            );
          },
        ),
      ),
    );
  }
}
