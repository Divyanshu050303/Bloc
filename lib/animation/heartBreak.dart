import 'package:flutter/material.dart';

class HeartBreakAnimation extends StatefulWidget {
  @override
  _HeartBreakAnimationState createState() => _HeartBreakAnimationState();
}

class _HeartBreakAnimationState extends State<HeartBreakAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _fallAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );

    _fallAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 1.0, curve: Curves.easeInOut),
      ),
    );

    _controller.addListener(() {
      setState(() {});
    });

    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heart Animation'),
      ),
      body: Center(
        child: Stack(
          children: [
            Transform.rotate(
              angle: _rotationAnimation.value * (3.14 / 4),
              child: Icon(
                _controller.status == AnimationStatus.reverse
                    ? Icons.favorite
                    : Icons.heart_broken,
                color: Colors.red,
                size: 100,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * _fallAnimation.value,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 100,
              ),
            ),
          ],
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
