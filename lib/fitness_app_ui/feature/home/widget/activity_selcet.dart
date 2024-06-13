import 'package:flutter/material.dart';
import 'package:tap/fitness_app_ui/common/constant.dart';

class ActivitySelect extends StatefulWidget {
  const ActivitySelect({super.key});

  @override
  State<ActivitySelect> createState() => _ActivitySelectState();
}

class _ActivitySelectState extends State<ActivitySelect> {
  int selectedActivity = 0;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height * 0.06,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Constant.activitySelect.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedActivity = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: selectedActivity == index
                        ? Colors.black
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 1.2, color: Colors.black)),
                child: Text(
                  Constant.activitySelect[index],
                  style: TextStyle(
                      color: selectedActivity == index
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            );
          }),
    );
  }
}
