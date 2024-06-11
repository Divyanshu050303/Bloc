sealed class VideoEvent {}

final class LoadingVideoevent extends VideoEvent {}

final class VidoeThumbNailEvent extends VideoEvent {
  final String videoUrl;
  VidoeThumbNailEvent(this.videoUrl);
}
