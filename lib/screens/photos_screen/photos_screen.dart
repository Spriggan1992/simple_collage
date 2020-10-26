import 'package:collage/config/config.dart';
import 'package:collage/design/theme.dart';
import 'package:flutter/material.dart';

class PhotosScreen extends StatelessWidget {
  static String id = 'photos_screen';
  const PhotosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                width: SizeConfig.blockSizeHorizontal * 100,
                height: SizeConfig.blockSizeVertical * 100,
                decoration: BoxDecoration(
                  gradient: DesignTheme.colors.mainGradientColor,
                ),
                child: Text('Hey there!'))));
  }
}
