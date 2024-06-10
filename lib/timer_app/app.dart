import 'package:flutter/material.dart';
import 'package:tap/timer_app/timer/view/timer_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Timer",
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
        primary: Color.fromRGBO(72, 74, 126, 1),
      )),
      home: const TimerPage(),
    );
  }
}
