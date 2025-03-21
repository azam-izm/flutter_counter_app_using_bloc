// Defines the base class for all counter-related events
abstract class CounterEvent {}

// Event to increase the counter value by 1
class IncrementCounter extends CounterEvent {}

// Event to decrease the counter value by 1
class DecrementCounter extends CounterEvent {}

// Event to divide the counter value by 2 (integer division)
class DivideCounter extends CounterEvent {}

// Event to multiply the counter value by 2
class MultiplyCounter extends CounterEvent {}

// Event to reset the counter value to 0
class ResetCounter extends CounterEvent {}
