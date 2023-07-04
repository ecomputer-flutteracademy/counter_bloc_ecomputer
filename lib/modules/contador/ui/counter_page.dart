// import 'package:counter_bloc_ecomputer/modules/contador/bloc/counter_bloc.dart';
// import 'package:counter_bloc_ecomputer/modules/contador/cubit/counter_cubit.dart';
import 'package:counter_bloc_ecomputer/modules/contador/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "App Contador",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              //context.read<CounterBloc>().add(IncrementCounterEvent(newValue: state.counter));
              context.read<CounterCubit>().increment(
                    newValue: state.counter,
                  );
            },
            child: const Icon(Icons.add),
          ),
          body: Center(
            child: Text(
              state.counter.toString(),
              style: const TextStyle(
                fontSize: 50.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
