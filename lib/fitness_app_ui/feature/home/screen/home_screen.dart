import 'package:flutter/material.dart';

import 'package:tap/fitness_app_ui/feature/home/widget/activity_card.dart';
import 'package:tap/fitness_app_ui/feature/home/widget/activity_selcet.dart';
import 'package:tap/fitness_app_ui/feature/home/widget/date.dart';
import 'package:tap/fitness_app_ui/feature/home/widget/schedule_activity.dart';

class FitnessHomeScreen extends StatelessWidget {
  const FitnessHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.cyan.shade50.withOpacity(0.5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const DateAndPhoto(),
              const ListTile(
                title: Text(
                  "Activity",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                trailing: Icon(
                  Icons.more_horiz_outlined,
                  size: 30,
                ),
              ),
              SizedBox(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height * 0.2,
                  child: const ActivityCard()),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Workouts",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const ActivitySelect(),
              const ScheduleActivity(),
              const ScheduleActivity()
            ],
          ),
        ),
      ),
    );
  }
}
