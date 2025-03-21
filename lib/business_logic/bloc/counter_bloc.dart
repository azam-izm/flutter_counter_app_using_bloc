import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

// Bloc class responsible for handling counter events and updating the state
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // Initializes the Bloc with an initial counter value of 0
  CounterBloc() : super(const CounterState(0)) {
    // Handles the event to increment the counter by 1
    on<IncrementCounter>((event, emit) => emit(state.copyWith(counter: state.counter + 1)));

    // Handles the event to decrement the counter by 1
    on<DecrementCounter>((event, emit) => emit(state.copyWith(counter: state.counter - 1)));

    // Handles the event to divide the counter value by 2
    // Ensures division by zero does not occur
    on<DivideCounter>((event, emit) => emit(state.copyWith(counter: state.counter != 0 ? state.counter ~/ 2 : 0)));

    // Handles the event to multiply the counter value by 2
    on<MultiplyCounter>((event, emit) => emit(state.copyWith(counter: state.counter * 2)));

    // Handles the event to reset the counter to 0
    on<ResetCounter>((event, emit) => emit(const CounterState(0)));
  }
}
