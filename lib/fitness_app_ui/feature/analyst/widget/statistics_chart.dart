import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatisticsChart extends StatelessWidget {
  const StatisticsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 380,
        child: Card(
          child: SizedBox(
            width: 360,
            child: LineChart(
              LineChartData(
                  titlesData: const FlTitlesData(
                      rightTitles: AxisTitles(drawBelowEverything: false),
                      topTitles: AxisTitles(drawBelowEverything: false)),
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(spots: [
                      const FlSpot(0, 1),
                      const FlSpot(1, 3),
                      const FlSpot(2, 10),
                      const FlSpot(3, 7),
                      const FlSpot(4, 12),
                      const FlSpot(5, 13),
                      const FlSpot(6, 17),
                      const FlSpot(7, 15),
                      const FlSpot(8, 20)
                    ], isCurved: true, show: true),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
