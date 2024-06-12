import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tap/trading_app_ui/feature/home/widget/company_ipo.dart';
import 'package:tap/trading_app_ui/feature/home/widget/portfolio_balance.dart';

List<Map<String, dynamic>> companyList = [
  {
    "compnayName": "Google",
    "price": "\$2345.54",
    "icon": EvaIcons.google,
    "imcrement": "+5.3%"
  },
  {
    "compnayName": "Facebook",
    "price": "\$145.54",
    "icon": EvaIcons.facebook,
    "imcrement": "-2.3%"
  },
  {
    "compnayName": "Github",
    "price": "\$345.54",
    "icon": EvaIcons.github,
    "imcrement": "+0.3%"
  },
  {
    "compnayName": "Gmail",
    "price": "\$45.54",
    "icon": EvaIcons.email,
    "imcrement": "-5.3%"
  },
  {
    "compnayName": "Twitter",
    "price": "\$245.54",
    "icon": EvaIcons.twitter,
    "imcrement": "+2.3%"
  },
  {
    "compnayName": "Home",
    "price": "\$2345.54",
    "icon": EvaIcons.home,
    "imcrement": "-11.3%"
  },
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PortfolioBalance(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Find Stoks, Bonds, Assets",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.greenAccent.shade100),
                          child: const Icon(Icons.filter_center_focus),
                        )),
                  )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Favourites",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: companyList.length,
                    itemBuilder: (context, index) {
                      return CompanyIpo(
                        companyName: companyList[index]["compnayName"],
                        price: companyList[index]["price"],
                        increment: companyList[index]["imcrement"],
                        icon: companyList[index]["icon"],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
