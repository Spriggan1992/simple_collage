import 'package:collage/bloc/photos/photos_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collage/config/config.dart';
import 'package:collage/design/theme.dart';
import 'package:collage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:uuid/uuid.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.state,
  }) : super(key: key);
  final PhotosState state;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Container(
        width: SizeConfig.blockSizeHorizontal * 100,
        height: SizeConfig.blockSizeVertical * 100,
        decoration: BoxDecoration(
          gradient: DesignTheme.colors.mainGradientColor,
        ),
        child: CustomScrollView(
          physics: ScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          slivers: [
            SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.only(top: defaultSize * 2),
              child: Center(child: TitleHolder(title: 'Swap to delete')),
            )),
            SliverPadding(
              padding: EdgeInsets.all(defaultSize * 2),
              sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: defaultSize * 2,
                  crossAxisSpacing: defaultSize * 2,
                  children: buildGrid(context, state.images, defaultSize)),
            )
          ],
        ));
  }

  List<Widget> buildGrid(
      BuildContext context, List<Asset> imgs, double defaultSize) {
    List<Widget> widgetList = [];
    for (int i = 0; i < imgs.length; i++) {
      widgetList.add(Dismissible(
        direction: i.isEven
            ? DismissDirection.endToStart
            : DismissDirection.startToEnd,
        confirmDismiss: (DismissDirection direction) async {
          try {
            context.bloc<PhotosBloc>().add(PhotosEvent.deleteImg(imgs[i]));
          } catch (e) {
            print(e);
          }
          return true;
        },
        key: Key(Uuid().v4()),
        child: AssetThumb(
            quality: 100,
            asset: imgs[i],
            width: defaultSize.toInt() * 50,
            height: defaultSize.toInt() * 50),
      ));
    }
    if (imgs.length < 10) {
      widgetList.add(
        GestureDetector(
          onTap: () => context.bloc<PhotosBloc>().add(PhotosEvent.updateImg()),
          child: Container(
            color: DesignTheme.colors.btnColor,
            width: defaultSize * 18.4,
            height: defaultSize * 18.4,
            child: Icon(
              Icons.add_circle_outline_outlined,
              size: defaultSize * 4,
            ),
          ),
        ),
      );
    }
    return widgetList;
  }
}
