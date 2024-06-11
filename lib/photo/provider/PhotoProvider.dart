import 'package:dio/dio.dart';
import 'package:tap/photo/model/photoModel.dart';

class Photoprovider {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://api.pexels.com/v1/"));

  void authenticateToApi() {
    _dio.options.headers['Authorization'] =
        'C2aeqdteU5UvFrxDMnXgcfLPGaC5Kc735g3D0bHoYKy3zIjUVJDNrJvo';
  }

  Future<PhotoModel> getPhote() async {
    try {
      authenticateToApi();
      final response = await _dio.get("search?query=people");
      return photoModelFromJson(response.toString());
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
