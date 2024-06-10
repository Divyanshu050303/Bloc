import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimationClass extends StatefulWidget {
  const AnimationClass({super.key});

  @override
  State<AnimationClass> createState() => _AnimationClassState();
}

class _AnimationClassState extends State<AnimationClass>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      animationBehavior: AnimationBehavior.normal,
      duration: const Duration(
          milliseconds: 100), // Duration for one complete rotation
      vsync: this,
    )..repeat(); // Repeat the animation indefinitely
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
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
