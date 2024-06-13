import 'package:flutter/material.dart';
import 'package:tap/fitness_app_ui/common/constant.dart';
import 'package:tap/fitness_app_ui/common/custom_circular_ring.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return ListView.builder(
        padding: const EdgeInsets.only(right: 8),
        scrollDirection: Axis.horizontal,
        itemCount: Constant.activitiesList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    height: mediaQueryData.size.height * 0.03,
                    decoration: BoxDecoration(
                        color: Constant.activitiesList[index]["color"],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      Constant.activitiesList[index]["activityName"],
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      color: Colors.transparent,
                      width: mediaQueryData.size.width * 0.2,
                      height: mediaQueryData.size.height * 0.1,
                      child: GradientCircularProgressIndicator(
                        color: Constant.activitiesList[index]["color"],
                      ))
                ],
              ),
            ),
          );
        });
  }
}
