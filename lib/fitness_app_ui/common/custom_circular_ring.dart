import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class GradientCircularProgressIndicator extends StatefulWidget {
  final Color? color;
  const GradientCircularProgressIndicator({super.key, this.color});

  @override
  State<GradientCircularProgressIndicator> createState() =>
      _GradientCircularProgressIndicatorState();
}

class _GradientCircularProgressIndicatorState
    extends State<GradientCircularProgressIndicator> {
  final ValueNotifier<int> _timerVideo = ValueNotifier<int>(0);
  int maxRecordTime = 60;

  @override
  void initState() {
    tick();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: progressIndicatorWidget()),
    );
  }

  Widget progressIndicatorWidget() {
    return ValueListenableBuilder(
      valueListenable: _timerVideo,
      builder: (BuildContext context, int values, Widget? child) {
        double? per = (double.parse((values / maxRecordTime).toString()));
        return CustomPaint(
          painter: CircularPaint(
            color: widget.color,
            progressValue: per,
          ),
          child: Container(
            padding: const EdgeInsets.all(
              4.5,
            ),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.fromBorderSide(BorderSide(
                color: Colors.transparent,
                width: 1.5,
              )),
            ),
            child: const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
            ),
          ),
        );
      },
    );
  }

  void tick() {
    Timer.periodic(const Duration(milliseconds: 10), (Timer t) {
      if (_timerVideo.value != maxRecordTime) {
        _timerVideo.value = _timerVideo.value + 1;
      } else {
        t.cancel();
      }
    });
  }
}

double deg2rad(double deg) => deg * math.pi / 180;

class CircularPaint extends CustomPainter {
  /// ring/border thickness, default  it will be 8px [borderThickness].
  final double borderThickness;
  final double progressValue;
  final Color? color;

  CircularPaint(
      {this.borderThickness = 8.5, required this.progressValue, this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);

    final rect =
        Rect.fromCenter(center: center, width: size.width, height: size.height);

    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = borderThickness;

    //grey background
    canvas.drawArc(
      rect,
      deg2rad(0),
      deg2rad(360),
      false,
      paint,
    );

    Paint progressBarPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = borderThickness
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          color!.withOpacity(0.2),
          color ?? Colors.transparent,
        ],
      ).createShader(rect);
    canvas.drawArc(
      rect,
      deg2rad(-90),
      deg2rad(360 * progressValue),
      false,
      progressBarPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
