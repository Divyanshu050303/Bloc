import 'package:tap/video_player/model/video_model.dart';

sealed class VideoState {}

final class VideoIntialState extends VideoState {}

final class VideoLoadingState extends VideoState {}

final class VideoErrorState extends VideoState {
  final String error;
  VideoErrorState(this.error);
}

final class VideoSuccessState extends VideoState {
  final VideoModel videoModel;
  VideoSuccessState(this.videoModel);
}

final class VidoeThumbNailState extends VideoState {}
