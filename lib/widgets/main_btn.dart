import 'package:collage/config/config.dart';
import 'package:collage/design/theme.dart';
import 'package:flutter/material.dart';

class MainBtn extends StatelessWidget {
  const MainBtn({
    Key key,
    this.getImg,
  }) : super(key: key);
  final Function getImg;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: getImg,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              width: defaultSize * 19.2,
              height: defaultSize * 19.2,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: DesignTheme.colors.mainGradientColor)),
          Container(
              width: defaultSize * 18,
              height: defaultSize * 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.5),
              ),
              child: Icon(
                Icons.add_a_photo_outlined,
                size: defaultSize * 4,
              )),
        ],
      ),
    );
  }
}
