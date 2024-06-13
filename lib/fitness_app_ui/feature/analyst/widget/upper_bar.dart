import 'package:flutter/material.dart';

class UpperBar extends StatelessWidget {
  const UpperBar({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      height: mediaQueryData.size.height * 0.09,
      width: mediaQueryData.size.width,
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.cyan.shade50.withOpacity(0.8),
              shape: BoxShape.circle),
          child: const Center(
            child: Icon(Icons.assignment),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: mediaQueryData.size.width * 0.17),
          child: const Text(
            "Statistics",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        trailing: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.cyan.shade50.withOpacity(0.8),
              shape: BoxShape.circle),
          child: const Center(
            child: Icon(Icons.settings_outlined),
          ),
        ),
      ),
    );
  }
}
