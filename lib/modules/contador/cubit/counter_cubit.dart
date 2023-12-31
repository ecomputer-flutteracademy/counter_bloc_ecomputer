import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void increment({required int newValue}) {
    final newState = state.copyWith(counter: newValue + 1);

    emit(newState);
  }
}
