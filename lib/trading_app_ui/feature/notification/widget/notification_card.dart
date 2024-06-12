import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final IconData? icon;
  final String? stockName;
  final String? companyName;
  final Color? color;
  final bool? isProfit;
  final String? price;
  final String? pricePercentage;
  const NotificationCard(
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
              Icon(
                isProfit ?? false ? Icons.arrow_upward : Icons.arrow_downward,
                color: isProfit ?? false ? Colors.green : Colors.red,
                size: 18,
              ),
              Text(
                pricePercentage ?? "",
                style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 13.4),
              )
            ],
          ),
        ),
      ),
    );
  }
}
