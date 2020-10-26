import 'package:collage/design/theme.dart';
import 'package:collage/repositories/repositories.dart';
import 'package:collage/screens/screens.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/photos/photos_bloc.dart';

void main() => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<PhotosBloc>(
              create: (context) =>
                  PhotosBloc(photosRepository: PhotosRepository()))
        ],
        child: MyApp(),
      ),
    );

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
