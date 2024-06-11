import 'package:bloc/bloc.dart';
import 'package:tap/video_player/bloc/video_event.dart';
import 'package:tap/video_player/bloc/video_state.dart';
import 'package:tap/video_player/repository/video_repository.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final VideoRepository _videoRepository;
  VideoBloc(this._videoRepository) : super(VideoIntialState()) {
    on<LoadingVideoevent>((event, emit) async {
      emit(VideoLoadingState());
      try {
        final video = await _videoRepository.getVideo();
        emit(VideoSuccessState(video));
      } catch (e) {
        emit(VideoErrorState(e.toString()));
      }
    });
  }
}
