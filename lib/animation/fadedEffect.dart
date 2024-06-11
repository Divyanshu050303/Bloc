import 'package:flutter/material.dart';

class FadedEffect extends StatefulWidget {
  const FadedEffect({super.key});

  @override
  State<FadedEffect> createState() => _FadedEffectState();
}

class _FadedEffectState extends State<FadedEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Center(
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: const [Colors.pink, Colors.blue, Colors.yellow],
                      stops: [0, _animationController.value, 1]),
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
            ),
          );
        },
      ),
    );
  }
}
