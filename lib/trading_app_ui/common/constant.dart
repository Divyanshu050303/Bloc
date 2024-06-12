import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Constant {
  static List<Map<String, dynamic>> marketCompanyList = [
    {
      "stockName": "Goog",
      "color": Colors.green,
      "compnayName": "Alpahbetic Inc",
      "price": "\$2345.54",
      "icon": EvaIcons.google,
      "pricePercentage": "5.3%",
      "isProfit": true,
    },
    {
      "stockName": "APPl",
      "color": Colors.blue,
      "compnayName": "Apple Inc",
      "price": "\$345.54",
      "icon": Icons.apple,
      "pricePercentage": "-1.3%",
      "isProfit": false,
    },
    {
      "stockName": "MSFT",
      "color": Colors.yellow,
      "compnayName": "Microsoft corop",
      "price": "\$245.54",
      "icon": Icons.microwave,
      "pricePercentage": "1.3%",
      "isProfit": true,
    },
    {
      "stockName": "NFLX",
      "color": Colors.red,
      "compnayName": "Netflix Inc",
      "price": "\$2345.54",
      "icon": Icons.network_cell,
      "pricePercentage": "-1.3%",
      "isProfit": false,
    },
    {
      "stockName": "LNFX",
      "color": Colors.blue,
      "compnayName": "LinkedIn Inc",
      "price": "\$2345.54",
      "icon": EvaIcons.listOutline,
      "pricePercentage": "-11.3%",
      "isProfit": false,
    },
    {
      "stockName": "TWTR",
      "color": Colors.blue,
      "compnayName": "Twitter Inc",
      "price": "\$2345.54",
      "icon": EvaIcons.twitter,
      "pricePercentage": "1.83%",
      "isProfit": true,
    },
  ];
  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.black;
  static const unselectedNavBarColor = Colors.black54;
  static List<Map<String, dynamic>> settingOption = [
    {"icon": Icons.person_outline, "title": "Profile", "onPressed": () {}},
    {
      "icon": Icons.account_circle_outlined,
      "title": "Account Setting",
      "onPressed": () {}
    },
    {
      "icon": Icons.analytics_outlined,
      "title": "Trading Preferences",
      "onPressed": () {}
    },
    {
      "icon": Icons.security_outlined,
      "title": "Security Settings",
      "onPressed": () {}
    },
    {
      "icon": Icons.privacy_tip_outlined,
      "title": "Privacy Settings",
      "onPressed": () {}
    },
    {
      "icon": Icons.dark_mode_outlined,
      "title": "Theme and Appearance",
      "onPressed": () {}
    },
    {
      "icon": Icons.support_agent_outlined,
      "title": "Help and Support",
      "onPressed": () {}
    },
    {"icon": Icons.info_outline, "title": "About", "onPressed": () {}},
  ];
}
