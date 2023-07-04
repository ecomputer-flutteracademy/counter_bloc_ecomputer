part of 'counter_bloc.dart';

abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {
  final int incrementNum;

  IncrementCounterEvent({
    required this.incrementNum,
  });
}
