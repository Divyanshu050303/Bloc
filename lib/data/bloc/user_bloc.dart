import 'package:bloc/bloc.dart';
import 'package:tap/data/bloc/user_event.dart';
import 'package:tap/data/bloc/user_state.dart';
import 'package:tap/data/repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;
  UserBloc(this._userRepository) : super(UserInitialState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final users = await _userRepository.getUsers();
        emit(UserSuccessState(users));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
  }
}
