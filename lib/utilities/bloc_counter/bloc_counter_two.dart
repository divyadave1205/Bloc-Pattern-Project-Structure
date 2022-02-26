// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEventTwo {}

class CounterIncrementPressedTwo extends CounterEventTwo {}

class CounterDecrementPressedTwo extends CounterEventTwo {}

class BlocCounterTwo extends Bloc<CounterEventTwo, CounterStateTwo> {
  BlocCounterTwo() : super(CounterStateTwo(counterValueTwo: false)) {
    on<CounterIncrementPressedTwo>((event, emit) =>
        emit(CounterStateTwo(counterValueTwo: state.counterValueTwo = true)));
    on<CounterDecrementPressedTwo>((event, emit) =>
        emit(CounterStateTwo(counterValueTwo: state.counterValueTwo = false)));
  }
}

class CounterStateTwo {
  bool counterValueTwo = false;

  CounterStateTwo({
    required this.counterValueTwo,
  });
}
