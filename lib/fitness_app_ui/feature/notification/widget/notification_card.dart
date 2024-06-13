import 'package:flutter/material.dart';
import 'package:tap/fitness_app_ui/common/constant.dart';
import 'package:tap/fitness_app_ui/feature/notification/screen/notification_details_screen.dart';

class FitnessNotificationCard extends StatelessWidget {
  const FitnessNotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.75,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: Constant.notificationFit.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationDetailsScreen()));
              },
              child: SizedBox(
                width: mediaQueryData.size.width * 0.9,
                height: mediaQueryData.size.height * 0.08,
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Constant.notificationFit[index]["icon"],
                      size: 30,
                    ),
                    title: Text(
                      Constant.notificationFit[index]["title"],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    trailing: Text(
                      Constant.notificationFit[index]["time"],
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
