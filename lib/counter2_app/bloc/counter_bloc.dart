import 'package:bloc/bloc.dart';
import 'package:tap/counter2_app/bloc/counter_event.dart';
import 'package:tap/counter2_app/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterIncrement>((event, emit) {
      emit(CounterState(count: state.count + 1));
    });
    on<CounterDecrement>((event, emit) {
      emit(CounterState(count: state.count - 1));
    });
  }
}
