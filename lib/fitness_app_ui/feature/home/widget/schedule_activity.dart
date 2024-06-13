import 'package:flutter/material.dart';

class ScheduleActivity extends StatelessWidget {
  const ScheduleActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "3 days",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pink.withOpacity(0.5)),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.electric_bolt,
                            color: Colors.pink,
                          ),
                          Text(
                            "Popular",
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Stretching",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const Text(
                  "Zaina Riddle",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(Icons.calendar_month),
                    Text(
                      "14 Jun 2014",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(Icons.schedule),
                    Text(
                      "60 minute",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            Image.asset(
              "assets/images/str.png",
              width: 200,
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
