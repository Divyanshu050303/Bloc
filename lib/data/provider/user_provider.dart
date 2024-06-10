import 'package:dio/dio.dart';
import 'package:tap/data/model/user_model.dart';

class UserProvider {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://reqres.in/api/"));
  Future<UserModel> getUsers() async {
    try {
      final reponse = await _dio.get("users");
      return userModelFromJson(reponse.toString());
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
