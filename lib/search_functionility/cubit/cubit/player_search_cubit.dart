import 'package:bloc/bloc.dart';

part 'player_search_state.dart';

class PlayerSearchCubit extends Cubit<PlayerSearchState> {
  PlayerSearchCubit() : super(PlayerSearchInitialState(allPlayer));
  void FilterPlayer(String name) {
    if (name.isEmpty) {
      emit(PlayerSearchInitialState(allPlayer));
    } else {
      final filterdlist = allPlayer
          .where((player) => player['name']
              .toString()
              .toLowerCase()
              .contains(name.toLowerCase()))
          .toList();
      emit(PlayerSearchFilteredState(filterdlist));
    }
  }
}
