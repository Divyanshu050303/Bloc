import 'package:flutter/material.dart';

class HeartBearAnimation extends StatefulWidget {
  const HeartBearAnimation({super.key});

  @override
  State<HeartBearAnimation> createState() => _HeartBearAnimationState();
}

class _HeartBearAnimationState extends State<HeartBearAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..repeat();
    _animation = Tween<double>(
      begin: 140,
      end: 160,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              _controller.stop();
            },
            tooltip: "Stop",
            child: const Text("Stop"),
          ),
          FloatingActionButton(
            onPressed: () {
              _controller.repeat();
            },
            tooltip: "Start",
            child: const Text("Start"),
          ),
        ],
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Center(
            child: Icon(
              Icons.music_note,
              size: _animation.value,
            ),
          );
        },
      ),
    );
  }
}
