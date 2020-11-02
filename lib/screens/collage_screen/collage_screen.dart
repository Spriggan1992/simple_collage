import 'package:collage/bloc/blocks.dart';
import 'package:collage/config/config.dart';
import 'package:collage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class CollageScreen extends StatelessWidget {
  static String id = 'collage_screen';
  const CollageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: BackgroundWrapper(
            child: BlocBuilder<CollageBloc, CollageState>(
              builder: (context, state) {
                return Container(
                  constraints: BoxConstraints(
                    maxHeight: SizeConfig.blockSizeVertical * 100,
                  ),
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: 2,
                    // itemCount: state.images.length,
                    itemBuilder: (context, index) =>
                        // Container(child: Text('text $index')),
                        AssetThumb(
                            quality: 100,
                            asset: state.images[index],
                            width: defaultSize.toInt() * 5,
                            height: defaultSize.toInt() * 5),
                    // width: defaultSize.toInt() * 60,
                    // height: defaultSize.toInt() * 60),
                    staggeredTileBuilder: (index) =>
                        StaggeredTile.count(2, index.isEven ? 5 : 5),
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                );

                // return Column(
                //   children: [
                //     Center(child: TitleHolder(title: 'Choose View')),
                //     Expanded(
                //       child: StaggeredGridView.countBuilder(
                //         crossAxisCount: 4,
                //         itemCount: state.images.length,
                //         itemBuilder: (context, index) =>
                //             // Container(child: Text('text $index')),
                //             AssetThumb(
                //                 quality: 100,
                //                 asset: state.images[index],
                //                 width: defaultSize.toInt() * 50,
                //                 height: defaultSize.toInt() * 50),
                //         staggeredTileBuilder: (index) =>
                //             StaggeredTile.count(1, index.isEven ? 1 : 3),
                //         mainAxisSpacing: 4.0,
                //         crossAxisSpacing: 4.0,
                //       ),
                //     ),
                //   ],
                // );
              },
            ),
          )),
    );
  }
}
