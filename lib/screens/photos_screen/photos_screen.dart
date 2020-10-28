import 'package:collage/bloc/photos/photos_bloc.dart';
import 'package:collage/config/config.dart';
import 'package:collage/config/status.dart';
import 'package:collage/design/theme.dart';
import 'package:collage/screens/screens.dart';
import 'package:collage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

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
            if (state.images.isEmpty) {
              Navigator.pushNamed(context, WelcomeScreen.id);
            }
          },
          builder: (context, state) {
            if (state.loadedData == LoadedImgs.failure) {
              return Center(child: CircularProgressIndicator());
            }
            return Container(
                width: SizeConfig.blockSizeHorizontal * 100,
                height: SizeConfig.blockSizeVertical * 100,
                decoration: BoxDecoration(
                  gradient: DesignTheme.colors.mainGradientColor,
                ),
                child: CustomScrollView(
                  physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TitleHolder(title: 'Swap to delete'),
                          Expanded(
                            child: Wrap(
                              runSpacing: defaultSize * 3,
                              spacing: defaultSize * 2,
                              children: [
                                ...buildGrid(state.images, defaultSize),
                                // ...state.images.map((item) {
                                //   return Dismissible(
                                //     onDismissed: (direction) {},
                                //     key: Key(),
                                //     child: AssetThumb(
                                //         quality: 100,
                                //         asset: item,
                                //         width: defaultSize.toInt() * 20,
                                //         height: defaultSize.toInt() * 20),
                                //   );
                                // },
                                // ),
                                Container(
                                  color: DesignTheme.colors.btnColor,
                                  width: defaultSize * 18.3,
                                  height: defaultSize * 18.3,
                                  child: Icon(
                                    Icons.add_circle_outline_outlined,
                                    size: defaultSize * 4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // SliverGrid(
                    //     gridDelegate:
                    //         SliverGridDelegateWithMaxCrossAxisExtent(
                    //       maxCrossAxisExtent: defaultSize * 20,
                    //       mainAxisSpacing: defaultSize * 2,
                    //       crossAxisSpacing: 20,
                    //       childAspectRatio: 1,
                    //     ),
                    //     delegate:
                    //         SliverChildBuilderDelegate((context, index) {
                    //       return AssetThumb(
                    //           quality: 100,
                    //           asset: state.images[index],
                    //           width: defaultSize.toInt() * 20,
                    //           height: defaultSize.toInt() * 20);
                    //     }, childCount: state.images.length))
                  ],
                )

                // child: AssetThumb(
                //     asset: state.images[0],
                //     width: defaultSize.toInt() * 5,
                //     height: defaultSize.toInt() * 5),

                // child: CustomScrollView(
                //   slivers: [
                //     SliverGrid(
                //         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //           maxCrossAxisExtent: 2,
                //         ),
                //         delegate: SliverChildBuilderDelegate((context, index) {
                //           return AssetThumb(
                //               asset: state.images[index],
                //               width: defaultSize.toInt() * 5,
                //               height: defaultSize.toInt() * 5);
                //         })),
                //   ],
                // ),
                );
          },
        ),
      ),
    );
  }

  List<Widget> buildGrid(List<Asset> imgs, double defaultSize) {
    List<Widget> widgetList = [];
    for (int i = 0; i < imgs.length; i++) {
      widgetList.add(Dismissible(
        onDismissed: (direction) {},
        key: Key(i.toString()),
        child: AssetThumb(
            quality: 100,
            asset: imgs[i],
            width: defaultSize.toInt() * 20,
            height: defaultSize.toInt() * 20),
      ));
    }
    return widgetList;
  }
}
