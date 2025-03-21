import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business_logic/bloc/counter_bloc.dart';
import 'presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          primarySwatch: Colors.grey,
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Counter Bloc App',
        home: const CounterScreen(),
      ),
    );
  }
}
