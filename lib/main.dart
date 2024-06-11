// import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tap/animation/animaterCard.dart';
// import 'package:tap/animation/animation_class.dart';
import 'package:tap/animation/bouncing_ball.dart';
import 'package:tap/animation/chainAnimation.dart';
import 'package:tap/animation/fadedEffect.dart';
import 'package:tap/animation/heart.dart';
import 'package:tap/animation/heartBeat.dart';
import 'package:tap/animation/heartBreak.dart';
import 'package:tap/animation/rotateImage.dart';
import 'package:tap/animation/walkingContainer.dart';
// import 'package:tap/animation/rotate.dart';

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
      // home: RepositoryProvider(
      //   create: (context) => UserRepository(UserProvider()),
      //   child: BlocProvider(
      //     create: (context) => UserBloc(context.read<UserRepository>()),
      //     child: const UserDetailUi(),
      //   ),
      // ),
      home: AnimatedHeart(),
      debugShowCheckedModeBanner: false,
    );
  }
}
