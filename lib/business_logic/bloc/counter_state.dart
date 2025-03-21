// Represents the state of the counter in the application
class CounterState {
  final int counter; // Holds the current value of the counter

  const CounterState(this.counter); // Constructor to initialize the counter state

  // Creates a new instance of CounterState with an updated counter value
  // If no new value is provided, it retains the current counter value
  CounterState copyWith({int? counter}) {
    return CounterState(counter ?? this.counter);
  }
}
