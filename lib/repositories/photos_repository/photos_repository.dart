import 'package:collage/repositories/repositories.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class PhotosRepository extends BasePhotosRepository {
  @override
  void dispose() {}

  @override
  Future<List<Asset>> getImgs({List<Asset> images}) async {
    List<Asset> resultList;

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 10,
        enableCamera: false,
        selectedAssets: images ?? [],
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "Collage"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Collage",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
          lightStatusBar: false,
        ),
      );
    } on Exception catch (e) {
      print(e);
    }
    if (resultList == null || resultList.isEmpty) {
      return resultList = [];
    }
    print('resultList $resultList');
    return resultList;
  }
}
