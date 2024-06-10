import 'package:bloc/bloc.dart';
import 'package:tap/counter2_app/visibility_bloc/visibility_event.dart';
import 'package:tap/counter2_app/visibility_bloc/visibility_state.dart';

class VisibilityBloc extends Bloc<VisibilityEvent, VisibilityState> {
  VisibilityBloc() : super(VisibilityState(show: true)) {
    on<ShowContainer>((event, emit) {
      emit(VisibilityState(show: true));
    });
    on<HideContainer>((event, emit) {
      emit(VisibilityState(show: false));
    });
  }
}
