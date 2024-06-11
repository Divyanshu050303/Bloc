import 'package:flutter/material.dart';

class Walkingcontainer extends StatefulWidget {
  const Walkingcontainer({super.key});

  @override
  State<Walkingcontainer> createState() => _WalkingcontainerState();
}

class _WalkingcontainerState extends State<Walkingcontainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<AlignmentGeometry> _alignmentGeometry;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);
    _alignmentGeometry = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic));
    _rotationAnimation = Tween<double>(begin: 0, end: 2).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlignTransition(
          alignment: _alignmentGeometry,
          child: RotationTransition(
            turns: _rotationAnimation,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
            ),
          )),
    );
  }
}
