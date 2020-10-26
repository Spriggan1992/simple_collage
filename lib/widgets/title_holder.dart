import 'package:collage/design/theme.dart';
import 'package:flutter/material.dart';

class TitleHolder extends StatelessWidget {
  const TitleHolder({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: DesignTheme.text.title);
  }
}
