import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap/counter2_app/bloc/counter_bloc.dart';
import 'package:tap/counter2_app/bloc/counter_event.dart';
import 'package:tap/counter2_app/bloc/counter_state.dart';
import 'package:tap/counter2_app/visibility_bloc/visibility_bloc.dart';
import 'package:tap/counter2_app/visibility_bloc/visibility_event.dart';
import 'package:tap/counter2_app/visibility_bloc/visibility_state.dart';

class Counter2page extends StatelessWidget {
  const Counter2page({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = CounterBloc();
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {
              // counterBloc.add(CounterIncrement()); using only blocbuilder
              context.read<CounterBloc>().add(CounterIncrement());
            },
            tooltip: "Increment",
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              // counterBloc.add(CounterDecrement()); using with blocbuilder
              context.read<CounterBloc>().add(CounterDecrement());
            },
            tooltip: "Decrement",
            child: const Icon(Icons.minimize),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<VisibilityBloc>().add(ShowContainer());
            },
            tooltip: "show",
            child: const Text("show"),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<VisibilityBloc>().add(HideContainer());
            },
            tooltip: "hide",
            child: const Text("hide"),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
          //   return Center(
          //     child: Text(state.count.toString(),
          //         style: const TextStyle(
          //             color: Colors.black, decoration: TextDecoration.none)),
          //   );
          // }),
          BlocConsumer<CounterBloc, CounterState>(listener: (context, state) {
            if (state.count % 2 == 0) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                      "The value of the counte is even now ${state.count} with blockconsumer")));
            }
          }, builder: (context, state) {
            return Center(
              child: Text(state.count.toString(),
                  style: const TextStyle(
                      color: Colors.black, decoration: TextDecoration.none)),
            );
          }),
          BlocBuilder<VisibilityBloc, VisibilityState>(
              builder: (context, state) {
            return Visibility(
                visible: state.show,
                child: Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                ));
          }),
          // BlocListener<CounterBloc, CounterState>(
          //   listener: (context, state) {
          //     if (state.count % 2 == 0) {
          //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //           content: Text(
          //               "The value of the counte is even now ${state.count}")));
          //     }
          //   },
          //   child: Text("Bloc Listener"),
          // )
        ],
      ),
    );
  }
}
