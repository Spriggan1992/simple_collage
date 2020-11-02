import 'package:collage/config/config.dart';
import 'package:collage/design/theme.dart';
import 'package:flutter/material.dart';

class BackgroundWrapper extends StatelessWidget {
  const BackgroundWrapper({Key key, @required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.blockSizeHorizontal * 100,
        height: SizeConfig.blockSizeVertical * 100,
        decoration: BoxDecoration(
          gradient: DesignTheme.colors.mainGradientColor,
        ),
        child: child);
  }
}
