import 'package:flutter/material.dart';

class PortfolioBalanceButton extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Function()? onpressed;
  final bool? isTilted;
  const PortfolioBalanceButton(
      {super.key, this.title, this.icon, this.onpressed, this.isTilted});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              border:
                  Border.all(width: 0.7, color: Colors.white.withOpacity(0.5)),
              color: Colors.white.withOpacity(0.2),
              shape: BoxShape.circle),
          child: Center(
              child: isTilted ?? false
                  ? Transform.rotate(
                      angle: 45 * 3.14 / 180,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ))
                  : Icon(
                      icon,
                      color: Colors.white,
                    )),
        ),
        Text(
          title ?? "",
          style: const TextStyle(fontSize: 18, color: Colors.white70),
        )
      ],
    );
  }
}
