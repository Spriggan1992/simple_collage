import 'package:collage/design/theme.dart';
import 'package:collage/screens/screens.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DesignTheme.appTheme,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (_) => WelcomeScreen(),
        PhotosScreen.id: (_) => PhotosScreen(),
      },
    );
  }
}
