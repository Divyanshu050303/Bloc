import 'package:chart_sparkline/chart_sparkline.dart';

import 'package:flutter/material.dart';

class CompanyIopGraph extends StatelessWidget {
  final IconData? icon;
  final String? stockName;
  final String? companyName;
  final Color? color;
  final bool? isProfit;
  final String? price;
  final String? pricePercentage;
  const CompanyIopGraph(
      {super.key,
      this.icon,
      this.color,
      this.companyName,
      this.isProfit,
      this.price,
      this.pricePercentage,
      this.stockName});

  @override
  Widget build(BuildContext context) {
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 5, horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Card(
        child: ListTile(
          leading: Icon(
            icon,
            size: 40,
          ),
          title: Text(stockName ?? ""),
          subtitle: Text(companyName ?? ""),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 65,
                height: 40,
                child: Sparkline(
                  data: data,
                  lineColor: color ?? Colors.black,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price ?? "",
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        isProfit ?? false
                            ? Icons.arrow_upward
                            : Icons.arrow_downward,
                        color: isProfit ?? false ? Colors.green : Colors.red,
                        size: 18,
                      ),
                      Text(
                        pricePercentage ?? "",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13.4),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
