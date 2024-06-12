import 'package:flutter/material.dart';
import 'package:tap/trading_app_ui/common/constant.dart';
import 'package:tap/trading_app_ui/feature/person/widget/person_card.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Setting",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: mediaQueryData.size.height * 0.82,
            width: mediaQueryData.size.width,
            child: ListView.builder(
                itemCount: Constant.settingOption.length,
                itemBuilder: (context, index) {
                  return PersonCard(
                    title: Constant.settingOption[index]["title"],
                    icon: Constant.settingOption[index]["icon"],
                    onPressed: Constant.settingOption[index]["onPressed"],
                  );
                }),
          )
        ],
      ),
    );
  }
}
