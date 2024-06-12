import 'package:flutter/material.dart';
import 'package:tap/trading_app_ui/feature/home/widget/portfolio_balance_button.dart';

class PortfolioBalance extends StatelessWidget {
  const PortfolioBalance({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      margin: EdgeInsets.symmetric(
          horizontal: mediaQueryData.size.width * 0.05,
          vertical: mediaQueryData.size.height * 0.05),
      width: mediaQueryData.size.width * 0.9,
      height: mediaQueryData.size.height * 0.35,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(1),
          borderRadius: BorderRadius.circular(50)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Portfolio Balance",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          Text(
            "\$48,345.09",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PortfolioBalanceButton(
                isSend: true,
                icon: Icons.send,
                title: "Send",
                isTilted: true,
              ),
              PortfolioBalanceButton(
                title: "To Self",
                icon: Icons.sync_alt,
              ),
              PortfolioBalanceButton(
                isTilted: true,
                title: "Card",
                icon: Icons.credit_card_outlined,
              ),
            ],
          )
        ],
      ),
    );
  }
}
