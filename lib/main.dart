// import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap/counter2_app/bloc/counter_bloc.dart';
import 'package:tap/counter2_app/view/counterPage.dart';
import 'package:tap/counter2_app/visibility_bloc/visibility_bloc.dart';
import 'package:tap/data/bloc/user_bloc.dart';
import 'package:tap/data/provider/user_provider.dart';
import 'package:tap/data/repository/user_repository.dart';
import 'package:tap/data/view/userUi.dart';

// import 'package:tap/infinite_list_app/simple_bloc_observer.dart';

// import 'package:tap/timer_app/app.dart';

void main() async {
  // Stream<int> stram = countStream(10);
  // Stream<int> stream = countStream(10);

  // /// Compute the sum of the stream of integers
  // int sum = await sumStream(stream);

  // /// Print the sum
  // print(sum); // 45
  // Bloc.observer = const CounterObserver();
  // Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

// Stream<int> countStream(int max) async* {
//   for (int i = 0; i < max; i++) {
//     yield i;
//   }
// }

// Future<int> sumStream(Stream<int> stream) async {
//   int sum = 0;
//   await for (int value in stream) {
//     sum += value;
//   }
//   return sum;
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MultiBlocProvider(
      //   providers: [
      //     BlocProvider<CounterBloc>(
      //       create: (context) => CounterBloc(),
      //     ),
      //     BlocProvider<VisibilityBloc>(
      //       create: (context) => VisibilityBloc(),
      //     ),
      //   ],
      //   child: BlocProvider<CounterBloc>(
      //     create: (context) => CounterBloc(),
      //     child: const Counter2page(),
      //   ),
      // ),
      home: RepositoryProvider(
        create: (context) => UserRepository(UserProvider()),
        child: BlocProvider(
          create: (context) => UserBloc(context.read<UserRepository>()),
          child: const UserDetailUi(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
