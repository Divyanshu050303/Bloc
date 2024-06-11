import 'package:flutter/material.dart';

class RotateImage extends StatefulWidget {
  const RotateImage({super.key});

  @override
  State<RotateImage> createState() => _RotateImageState();
}

class _RotateImageState extends State<RotateImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.isAnimating ? _controller.stop() : _controller.repeat();
        },
        child: Icon(_controller.isAnimating ? Icons.play_arrow : Icons.pause),
      ),
      body: Center(
        child: RotationTransition(
          turns: _controller,
          child: Image.asset(
            "assets/images/hypno.png",
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
