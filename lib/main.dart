// import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap/hive_store/hive_store_ui.dart';
import 'package:tap/trading_app_ui/feature/home/screen/home_screen.dart';
import 'package:tap/trading_app_ui/feature/market/screen/market_screen.dart';
import 'package:tap/trading_chart/trading_chat.dart';
// import 'package:tap/search_functionility/cubit/cubit/player_search_cubit.dart';
// import 'package:tap/search_functionility/view/PlayerDisplay.dart';
// import 'package:tap/video_payer_using_cubit/cubit/video_player_cubit.dart';
// import 'package:tap/video_payer_using_cubit/view/video_palyer.dart';
// import 'package:tap/video_player/views/video_palyer.dart';
// import 'package:tap/animation/animaterCard.dart';
// import 'package:tap/animation/animation_class.dart';
// import 'package:tap/animation/bouncing_ball.dart';
// import 'package:tap/animation/chainAnimation.dart';
// import 'package:tap/animation/fadedEffect.dart';
// import 'package:tap/animation/heart.dart';
// import 'package:tap/animation/heartBeat.dart';
// import 'package:tap/animation/heartBreak.dart';
// import 'package:tap/animation/rotateImage.dart';
// import 'package:tap/animation/walkingContainer.dart';
// import 'package:tap/photo/bloc/photo_bloc.dart';
// import 'package:tap/photo/provider/PhotoProvider.dart';
// import 'package:tap/photo/repository/photoRepository.dart';
// import 'package:tap/photo/view/photoDisplay.dart';
// import 'package:tap/video_player/bloc/video_bloc.dart';
// import 'package:tap/video_player/provider/VideoProvider.dart';
// import 'package:tap/video_player/repository/video_repository.dart';
// import 'package:tap/video_player/views/video_palyer.dart';
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
  WidgetsFlutterBinding.ensureInitialized();

  // To intialise the hive database
  await Hive.initFlutter();

  // To open the user hive box
  await Hive.openBox("userHiveBox");
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
    return const MaterialApp(
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
      // home: RepositoryProvider(
      //   create: (context) => VideoRepository(Videoprovider()),
      //   child: BlocProvider(
      //     create: (context) => VideoBloc(context.read<VideoRepository>()),
      //     child: const VideoPalyer(),
      //   ),
      // ),
      // cubit
      // home: BlocProvider<PlayerSearchCubit>(
      //   create: (_) => PlayerSearchCubit(),
      //   child: const Playerdisplay(),
      // ),
      // home: BlocProvider<VideoPlayerCubit>(
      //   create: (_) => VideoPlayerCubit(),
      //   child: VideoPalyerCubit(),
      // ),
      // home: AnimatedHeart(),
      home: MarketScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
