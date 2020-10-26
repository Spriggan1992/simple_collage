import 'package:collage/repositories/repositories.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

abstract class BasePhotosRepository extends BaseRepository {
  Future<List<Asset>> getImgs();
}
