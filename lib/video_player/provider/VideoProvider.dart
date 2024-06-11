import 'package:dio/dio.dart';
import 'package:tap/video_player/model/video_model.dart';

class Videoprovider {
  final Dio _dio =
      Dio(BaseOptions(baseUrl: "https://api.pexels.com/v1/videos/"));
  void authenticateToApi() {
    _dio.options.headers['Authorization'] =
        'C2aeqdteU5UvFrxDMnXgcfLPGaC5Kc735g3D0bHoYKy3zIjUVJDNrJvo';
  }

  Future<VideoModel> getVideos() async {
    try {
      authenticateToApi();
      final response = await _dio.get("search?query=people");

      VideoModel model = videoModelFromJson(response.toString());
      print(model.page);
      return model;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
