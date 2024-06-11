import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:tap/video_player/model/video_model.dart';

part 'video_player_state.dart';

class VideoPlayerCubit extends Cubit<VideoPlayerState> {
  VideoPlayerCubit() : super(VideoPlayerInitialState());
  final Dio _dio =
      Dio(BaseOptions(baseUrl: "https://api.pexels.com/v1/videos/"));
  void authenticateToApi() {
    _dio.options.headers['Authorization'] =
        'C2aeqdteU5UvFrxDMnXgcfLPGaC5Kc735g3D0bHoYKy3zIjUVJDNrJvo';
  }

  void getVideos() async {
    emit(VideoPlayerLoadingState());
    try {
      authenticateToApi();
      final response = await _dio.get("search?query=people");

      VideoModel model = videoModelFromJson(response.toString());
      print(model.page);
      emit(VideoPlayerSuccessState(model));
    } catch (e) {
      emit(VideoPlayererrorState(e.toString()));
    }
  }
}
