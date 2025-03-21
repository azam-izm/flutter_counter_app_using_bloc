import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/bloc/counter_bloc.dart';
import '../../business_logic/bloc/counter_event.dart';
import '../../business_logic/bloc/counter_state.dart';

// UI screen to display and interact with the counter using BLoC
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Counter App Using Bloc',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Displays the current counter value
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Counter: ${state.counter}',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(height: 20),

            // Wrap widget arranges buttons responsively
            Wrap(
              spacing: 10, // Horizontal spacing between buttons
              alignment: WrapAlignment.center,
              children: [
                _counterButton(context, '+', IncrementCounter()),
                _counterButton(context, '-', DecrementCounter()),
                _counterButton(context, '÷2', DivideCounter()),
                _counterButton(context, '×2', MultiplyCounter()),
                _counterButton(context, 'Reset', ResetCounter()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create a styled counter button
  Widget _counterButton(
      BuildContext context, String label, CounterEvent event) {
    return ElevatedButton(
      onPressed: () => context.read<CounterBloc>().add(event),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      child: Text(label),
    );
  }
}
