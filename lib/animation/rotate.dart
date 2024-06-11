import 'package:flutter/material.dart';

class RotateAnimatedState extends StatefulWidget {
  const RotateAnimatedState({super.key});

  @override
  State<RotateAnimatedState> createState() => __RotateAnimatedStateState();
}

class __RotateAnimatedStateState extends State<RotateAnimatedState>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animationController;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300))
          ..forward()
          ..repeat();
    animationController = Tween<double>(begin: 0, end: 0.5).animate(
      _controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: _controller,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
