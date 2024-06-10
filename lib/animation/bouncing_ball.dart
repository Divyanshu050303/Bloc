import 'package:flutter/material.dart';

class BouncingBall extends StatefulWidget {
  @override
  _BouncingBallState createState() => _BouncingBallState();
}

class _BouncingBallState extends State<BouncingBall>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 0.5).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return SizedBox(
          width: 100,
          height: 100,
          child: CustomPaint(
            painter: BallPainter(_animation.value),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class BallPainter extends CustomPainter {
  final double value;

  BallPainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    const radius = 20.0;
    final centerY = size.height - (value * size.height);
    final ballPaint = Paint()..color = Colors.blue;
    canvas.drawCircle(Offset(size.width / 2, centerY), radius, ballPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
