import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap/counter_app/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              key: const Key('counterView_increment_floatingActionButton'),
              child: const Icon(Icons.add)),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            key: const Key("counterView_decrement_floatingActionButton"),
            child: const Icon(Icons.remove),
          )
        ],
      ),
      body: Center(child: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: Text(
              "$state",
              style: textTheme.displayMedium,
            ),
          );
        },
      )),
    );
  }
}
