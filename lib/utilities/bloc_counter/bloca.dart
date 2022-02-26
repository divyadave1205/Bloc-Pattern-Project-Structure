// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class BlocCounter extends Bloc<CounterEvent, CounterState> {
  BlocCounter() : super(CounterState(counterValue: false)) {
    on<CounterIncrementPressed>((event, emit) =>
        emit(CounterState(counterValue: state.counterValue = true)));
    on<CounterDecrementPressed>((event, emit) =>
        emit(CounterState(counterValue: state.counterValue = false)));
  }
}

class CounterState {
  bool counterValue = false;

  CounterState({
    required this.counterValue,
  });
}

BlocListener() {}
