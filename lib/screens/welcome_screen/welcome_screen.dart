import 'dart:io';

import 'package:collage/bloc/photos/photos_bloc.dart';
import 'package:collage/config/config.dart';
import 'package:collage/config/status.dart';
import 'package:collage/design/theme.dart';
import 'package:collage/screens/photos_screen/photos_screen.dart';
import 'package:collage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: Scaffold(
          body: BlocListener<PhotosBloc, PhotosState>(
        listener: (context, state) {
          if (state.loadedData == LoadedImgs.loaded) {
            Navigator.pushNamed(context, PhotosScreen.id);
          }
        },
        child: Container(
          width: SizeConfig.blockSizeHorizontal * 100,
          decoration: BoxDecoration(
            gradient: DesignTheme.colors.mainGradientColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleHolder(title: 'Select Photos'),
              SizedBox(
                height: defaultSize * 3,
              ),
              MainBtn(
                getImg: () {
                  context.bloc<PhotosBloc>().add(PhotosEvent.loadeImgs());
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) {
                  //         return PhotosScreen();
                  //       },
                  //     ),

                  // );
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
