import 'package:flutter/material.dart';
import 'package:tap/fitness_app_ui/common/utils.dart';

class DateAndPhoto extends StatefulWidget {
  const DateAndPhoto({super.key});

  @override
  State<DateAndPhoto> createState() => _DateAndPhotoState();
}

class _DateAndPhotoState extends State<DateAndPhoto> {
  String todayDate = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTodayDate();
  }

  void getTodayDate() async {
    todayDate = Utils.pickTodayDate(context).toString();
  }

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        "6 Oct 2024",
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
      subtitle: Text(
        "Have a nice day!",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      trailing: CircleAvatar(
        backgroundImage: AssetImage("assets/images/fitnes.jpg"),
        radius: 32,
      ),
    );
  }
}
