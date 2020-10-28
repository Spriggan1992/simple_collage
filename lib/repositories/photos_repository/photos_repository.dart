import 'package:collage/repositories/repositories.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:multi_image_picker/src/asset.dart';

class PhotosRepository extends BasePhotosRepository {
  @override
  void dispose() {}

  @override
  Future<List<Asset>> getImgs() async {
    List<Asset> resultList;
    String error = 'No Error Dectected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: false,
        // selectedAssets: images,

        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: true,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }
    if (resultList == null || resultList.isEmpty) {
      return resultList = [];
    }
    print('resultList $resultList');
    return resultList;
  }
}
