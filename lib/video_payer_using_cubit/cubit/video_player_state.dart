part of 'video_player_cubit.dart';

sealed class VideoPlayerState {}

final class VideoPlayerInitialState extends VideoPlayerState {}

final class VideoPlayerLoadingState extends VideoPlayerState {}

final class VideoPlayererrorState extends VideoPlayerState {
  final String error;
  VideoPlayererrorState(this.error);
}

final class VideoPlayerSuccessState extends VideoPlayerState {
  final VideoModel videoModel;
  VideoPlayerSuccessState(this.videoModel);
}
