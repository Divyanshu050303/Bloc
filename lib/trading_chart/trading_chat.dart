import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_trading_chart/flutter_trading_chart.dart';

class ExempleTradingChart extends StatefulWidget {
  const ExempleTradingChart({Key? key}) : super(key: key);

  @override
  _ExempleTradingChartState createState() => _ExempleTradingChartState();
}

class _ExempleTradingChartState extends State<ExempleTradingChart> {
  TradingChartController controller = TradingChartController(
    settings: TradingChartSettings(
      volume: VolumeSettings(
        visible: true,
      ),
      vpvr: VpvrSettings(
        visible: true,
      ),
    ),
  );
  @override
  void initState() {
    super.initState();
    setCandleSerie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TRADING CHART EXEMPLE"),
      ),
      body: TradingChart(
        controller: controller,
      ),
    );
  }

  CandlestickSerie generateCandleStickSerie() {
    var rng = Random();
    double open = 50000;
    int timestamp = 1621184400000;
    double volume = 1000;
    List<Candlestick> candles = [];
    for (int i = 0; i < 100; ++i) {
      double close = open * (1 + (rng.nextInt(11) - 4.5) / 100);
      double high = max(close, open) * (1 + rng.nextInt(2) / 100);
      double low = min(close, open) * (1 - rng.nextInt(2) / 100);
      volume = volume * (1 + (rng.nextInt(11) - 4.8) / 100);
      candles.add(Candlestick(
        timestamp: timestamp + i * 300000,
        open: open,
        high: high,
        low: low,
        close: close,
        volume: volume,
      ));
      open = close;
    }
    return CandlestickSerie(
      name: "Price",
      candles: candles,
    );
  }

  void setCandleSerie() {
    controller.data.candleSerie = generateCandleStickSerie();
    List<Point> movingAveragePoints = [];
    for (int i = 8; i < controller.data.candleSerie!.candles.length; ++i) {
      controller.data.candleSerie!.candles
          .sublist(i - 8, i + 1)
          .map((e) => e.close)
          .toList();
      movingAveragePoints.add(Point(
        timestamp: controller.data.candleSerie!.candles[i].timestamp,
        y: 19.0,
      ));
    }
    controller.data.lineSeries.add(LineSerie(
      name: "Moving Average",
      color: Color.fromARGB(255, 236, 15, 240),
      points: movingAveragePoints,
    ));
    controller.setTimestamps(
      controller.data.candleSerie!.candles.first.timestamp,
      controller.data.candleSerie!.candles.last.timestamp,
    );
  }
}
