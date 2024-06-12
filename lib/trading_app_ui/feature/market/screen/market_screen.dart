import 'package:flutter/material.dart';
import 'package:tap/trading_app_ui/common/constant.dart';
import 'package:tap/trading_app_ui/feature/market/widget/company_iop_graph.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Market",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Find Stoks, Bonds, Assets",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.search),
                  ),
                )),
            SizedBox(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height * 0.7,
              child: ListView.builder(
                  itemCount: Constant.marketCompanyList.length,
                  itemBuilder: (context, index) {
                    return CompanyIopGraph(
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
