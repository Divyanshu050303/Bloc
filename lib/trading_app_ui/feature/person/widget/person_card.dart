import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Function()? onPressed;
  const PersonCard({super.key, this.icon, this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Card(
          child: ListTile(
            leading: Icon(icon),
            title: Text(title ?? ""),
          ),
        ),
      ),
    );
  }
}
