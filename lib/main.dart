//import 'package:counter_bloc_ecomputer/modules/contador/bloc/counter_bloc.dart';
import 'package:counter_bloc_ecomputer/modules/contador/cubit/counter_cubit.dart';
import 'package:counter_bloc_ecomputer/modules/contador/ui/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<CounterBloc>(
        //   create: (context) => CounterBloc(),
        // ),
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
