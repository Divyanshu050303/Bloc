import 'package:flutter/material.dart';
import 'package:tap/fitness_app_ui/feature/notification/screen/notification_details_screen.dart';

class Constant {
  static List<Map<String, dynamic>> activitiesList = [
    {"activityName": "Jogging", "color": Colors.brown},
    {"activityName": "Swim", "color": Colors.purple},
    {"activityName": "Cycling", "color": Colors.green},
    {"activityName": "Yoga", "color": Colors.cyan},
    {"activityName": "Stretching", "color": Colors.yellow},
    {"activityName": "Weight Lifting", "color": Colors.deepPurpleAccent},
    {"activityName": "Running", "color": Colors.indigo},
    {"activityName": "Walking", "color": Colors.deepOrangeAccent},
    {"activityName": "Side Planks", "color": Colors.red},
  ];
  static List<String> activitySelect = [
    "Jogging",
    "Swim",
    "Cycling",
    "Stretching",
    "Yoga",
    "Weight Lifting",
    "Running",
    "Walking",
    "Side Planks"
  ];
  static List<Map<String, dynamic>> notificationFit = [
    {
      "title": "Cross Fit",
      "time": "2:35 pm",
      "icon": Icons.sports_baseball_outlined,
      "onPressed": (BuildContext context) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const NotificationDetailsScreen()));
      },
      "trainerName": "Divyanshu Singh",
      "benifitList": [
        {
          "icon": Icons.schedule_outlined,
          "benifit": "60 mins",
          "color": Colors.cyan.shade200
        },
        {
          "icon": Icons.local_fire_department,
          "benifit": "115 kcal",
          "color": Colors.cyan.shade500
        },
        {
          "icon": Icons.trending_up,
          "benifit": "Medium",
          "color": Colors.orangeAccent.shade200
        },
        {
          "icon": Icons.sports_baseball,
          "benifit": "Meditation",
          "color": Colors.cyan.shade200
        },
      ],
      "equipmentName": "Medball Twist",
      "discription": '''
Starting position - siting, legs bent at the knees, back straight.Tilt the body
slightly backwords.Hold a medball in your hands. Turn the body to the left and toch the medbass to the floor on your left.
The turn your body to the right and do the same. Breathe evenly
'''
    },
    {
      "title": "Joggin",
      "time": "12:35 pm",
      "icon": Icons.directions_run,
      "onPressed": () {},
      "trainerName": "Divyanshu Singh",
      "benifitList": [
        {
          "icon": Icons.schedule_outlined,
          "benifit": "60 mins",
          "color": Colors.cyan.shade200
        }
      ],
      "equipmentName": "Medball Twist",
      "discription": '''
Starting position - siting, legs bent at the knees, back straight.Tilt the body
slightly backwords.Hold a medball in your hands. Turn the body to the left and toch the medbass to the floor on your left.
The turn your body to the right and do the same. Breathe evenly
'''
    },
    {
      "title": "Biceps",
      "time": "11:20 am",
      "icon": Icons.fitness_center_outlined,
      "onPressed": () {},
      "trainerName": "Divyanshu Singh",
      "benifitList": [
        {
          "icon": Icons.schedule_outlined,
          "benifit": "60 mins",
          "color": Colors.cyan.shade200
        }
      ],
      "equipmentName": "Medball Twist",
      "discription": '''
Starting position - siting, legs bent at the knees, back straight.Tilt the body
slightly backwords.Hold a medball in your hands. Turn the body to the left and toch the medbass to the floor on your left.
The turn your body to the right and do the same. Breathe evenly
'''
    },
    {
      "title": "Wight Lifting",
      "time": "9:35 am",
      "icon": Icons.fitness_center_outlined,
      "onPressed": () {},
      "trainerName": "Divyanshu Singh",
      "benifitList": [
        {
          "icon": Icons.schedule_outlined,
          "benifit": "60 mins",
          "color": Colors.cyan.shade200
        }
      ],
      "equipmentName": "Medball Twist",
      "discription": '''
Starting position - siting, legs bent at the knees, back straight.Tilt the body
slightly backwords.Hold a medball in your hands. Turn the body to the left and toch the medbass to the floor on your left.
The turn your body to the right and do the same. Breathe evenly
'''
    },
    {
      "title": "Cross Fit",
      "time": "2:35 pm",
      "icon": Icons.sports_baseball_outlined,
      "onPressed": () {},
      "trainerName": "Divyanshu Singh",
      "benifitList": [
        {
          "icon": Icons.schedule_outlined,
          "benifit": "60 mins",
          "color": Colors.cyan.shade200
        }
      ],
      "equipmentName": "Medball Twist",
      "discription": '''
Starting position - siting, legs bent at the knees, back straight.Tilt the body
slightly backwords.Hold a medball in your hands. Turn the body to the left and toch the medbass to the floor on your left.
The turn your body to the right and do the same. Breathe evenly
'''
    }
  ];
}
