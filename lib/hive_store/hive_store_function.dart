import 'package:hive_flutter/hive_flutter.dart';

class HiveFunction {
  static final userBox = Hive.box("userHiveBox");
  // create or add single data in hive
  static createUser(Map data) {
    userBox.add(data);
  }

  // create and add multiple data in hive
  static addAllUser(List data) {
    userBox.addAll(data);
  }

  // get a Particular data form the hive
  static Map getuser(int key) {
    return userBox.get(key);
  }

  // get all data stored in the hive
  static List getAllData() {
    final data = userBox.keys.map((key) {
      final value = userBox.get(key);
      return {"key": key, "name": value["name"], "email": value["email"]};
    }).toList();
    return data.reversed.toList();
  }

  static updateUser(int key, Map data) {
    userBox.put(key, data);
  }

  static deleteUser(int key) {
    return userBox.delete(key);
  }

  static deleteAllUser() {
    return userBox.deleteAll(userBox.keys);
  }
}
