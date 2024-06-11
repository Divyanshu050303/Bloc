import 'package:flutter/material.dart';
import 'package:tap/timer_app/ticker.dart';

class HeartAfterClick extends StatefulWidget {
  const HeartAfterClick({super.key});

  @override
  State<HeartAfterClick> createState() => _HeartAfterClickState();
}

class _HeartAfterClickState extends State<HeartAfterClick>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late AnimationController _heartBreakController;
  late Animation<double> heartBrokeAnimation;
  late Animation<double> fellDownAnimation;
  bool color = false;
  @override
  void initState() {
    // TODO: implement initState

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);
    _animation = Tween<double>(begin: 140, end: 160)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _heartBreakController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Center(
            child: GestureDetector(
              onTap: () {
                if (_controller.isAnimating) {
                  _controller.stop();
                  setState(() {
                    color = false;
                  });
                } else {
                  _controller.repeat(reverse: true);
                  color = true;
                }
              },
              child: Icon(
                Icons.favorite,
                size: _animation.value,
                color: color ? Colors.red : Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
