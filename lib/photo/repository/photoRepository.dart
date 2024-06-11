import 'package:tap/photo/model/photoModel.dart';
import 'package:tap/photo/provider/PhotoProvider.dart';

abstract class IPhotorepository {
  Future<PhotoModel> getPhote();
}

class PhotoRepository implements IPhotorepository {
  final Photoprovider photoprovider;
  PhotoRepository(this.photoprovider);
  @override
  Future<PhotoModel> getPhote() {
    return photoprovider.getPhote();
  }
}
