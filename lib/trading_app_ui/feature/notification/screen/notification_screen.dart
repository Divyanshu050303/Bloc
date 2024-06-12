import 'package:flutter/material.dart';
import 'package:tap/trading_app_ui/common/constant.dart';
import 'package:tap/trading_app_ui/common/search.dart';
import 'package:tap/trading_app_ui/feature/notification/widget/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Notification",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const CustomSearchBar(
              hintText: "Search Notification",
            ),
            SizedBox(
              height: mediaQueryData.size.height * 0.73,
              width: mediaQueryData.size.width,
              child: ListView.builder(
                  itemCount: Constant.marketCompanyList.length,
                  itemBuilder: (context, index) {
                    return NotificationCard(
                      stockName: Constant.marketCompanyList[index]["stockName"],
                      color: Constant.marketCompanyList[index]["color"],
                      companyName: Constant.marketCompanyList[index]
                          ["compnayName"],
                      price: Constant.marketCompanyList[index]["price"],
                      pricePercentage: Constant.marketCompanyList[index]
                          ["pricePercentage"],
                      icon: Constant.marketCompanyList[index]["icon"],
                      isProfit: Constant.marketCompanyList[index]["isProfit"],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
