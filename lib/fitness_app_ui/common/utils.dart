import 'package:flutter/material.dart';

class Utils {
  static Future<String> pickTodayDate(BuildContext context) async {
    print("Function called");
    final DateTime today = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: today,
      firstDate: today,
      lastDate: today,
    );
    print(pickedDate.toString());
    return pickedDate.toString();
  }
}
