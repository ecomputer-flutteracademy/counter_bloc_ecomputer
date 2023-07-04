import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<IncrementCounterEvent>((event, emit) {
      // int newValue = state.counter;

      int newValue = event.incrementNum;
      print(event.incrementNum);

      newValue++;
      print(newValue);

      emit(state.copyWith(counter: newValue));
    });
  }
}
