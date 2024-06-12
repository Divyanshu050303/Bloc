import 'package:flutter/material.dart';

class CompanyIpo extends StatelessWidget {
  final IconData? icon;
  final String? companyName;
  final String? price;
  final String? increment;
  const CompanyIpo(
      {super.key, this.companyName, this.icon, this.price, this.increment});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: mediaQueryData.size.width * 0.3,
      height: mediaQueryData.size.height * 0.15,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  size: 45,
                ),
                Text(
                  increment ?? "",
                  style: TextStyle(
                      color: increment![0] == "-" ? Colors.red : Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ]),
          Text(
            companyName ?? "",
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          Text(
            price ?? "",
            style: const TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
