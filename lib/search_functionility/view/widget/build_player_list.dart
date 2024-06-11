import 'package:flutter/material.dart';

class buildPlayerList extends StatelessWidget {
  final List<Map<String, dynamic>> palyerlist;
  const buildPlayerList({super.key, required this.palyerlist});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: palyerlist.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name : ${palyerlist[index]["name"]}"),
                  Text("Country : ${palyerlist[index]["Country"]}")
                ],
              ),
            ),
          );
        });
  }
}
