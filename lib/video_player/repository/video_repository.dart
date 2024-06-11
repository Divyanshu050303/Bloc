import 'package:tap/video_player/model/video_model.dart';
import 'package:tap/video_player/provider/VideoProvider.dart';

abstract class IVideoRepostory {
  Future<VideoModel> getVideo();
}

class VideoRepository implements IVideoRepostory {
  final Videoprovider _videoprovider;
  VideoRepository(this._videoprovider);
  @override
  Future<VideoModel> getVideo() {
    return _videoprovider.getVideos();
  }
}
