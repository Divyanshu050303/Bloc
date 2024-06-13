import 'package:flutter/material.dart';
import 'package:tap/fitness_app_ui/feature/notification/widget/upper_bar.dart';

class NotificationDetailsScreen extends StatelessWidget {
  const NotificationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50.withOpacity(0.5),
      body: const Column(
        children: [
          SizedBox(
            height: 40,
          ),
          NotificationUpperBar(
            leadingIcon: Icons.assessment,
            trailingIcon: Icons.settings_outlined,
            title: "Notification",
          ),
        ],
      ),
    );
  }
}
