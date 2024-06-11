import 'package:bloc/bloc.dart';

import 'package:tap/photo/bloc/photo_event.dart';
import 'package:tap/photo/bloc/photo_state.dart';
import 'package:tap/photo/repository/photoRepository.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final PhotoRepository photoRepository;
  PhotoBloc(this.photoRepository) : super(PhotoInitialState()) {
    on<LoadPhotoEvent>((event, emit) async {
      emit(PhotoLoadingState());
      try {
        final photo = await photoRepository.getPhote();
        emit(PhotoSuccessState(photo));
      } catch (e) {
        emit(PhotoErrorState(e.toString()));
      }
    });
  }
}
