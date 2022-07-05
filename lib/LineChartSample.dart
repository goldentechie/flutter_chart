// ignore: file_names
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample extends StatelessWidget {
  const LineChartSample({Key? key}) : super(key: key);

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    String text = value.toInt().toString();
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: _dateTextStyle),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 12.0);
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text('\$ ${value}', style: style),
    );
  }

  static const _dateTextStyle = TextStyle(
    fontSize: 10,
    color: Colors.purple,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 5.0;

    return AspectRatio(
      aspectRatio: 2.4,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 24),
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(enabled: false),
            lineBarsData: [
              LineChartBarData(
                spots: const [
                  FlSpot(0, 4),
                  FlSpot(1, 4),
                  FlSpot(2, 4),
                  FlSpot(3, 4),
                  FlSpot(4, 4),
                  FlSpot(5, 4),
                  FlSpot(6, 4),
                  FlSpot(7, 4),
                  FlSpot(8, 4),
                  FlSpot(9, 4),
                  FlSpot(10, 0),
                  FlSpot(11, 1),
                  FlSpot(12, 2),
                  FlSpot(13, 3),
                  FlSpot(14, 4),
                  FlSpot(15, 5),
                  FlSpot(16, 6),
                  FlSpot(17, 7),
                  FlSpot(18, 8),
                  FlSpot(19, 9),
                  FlSpot(20, 0),
                  FlSpot(21, 1),
                  FlSpot(22, 2),
                ],
                isCurved: true,
                barWidth: 3,
                color: Colors.purpleAccent,
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.deepPurple.withOpacity(0.4),
                  cutOffY: cutOffYValue,
                  applyCutOffY: true,
                ),
                aboveBarData: BarAreaData(
                  show: true,
                  color: Colors.orange.withOpacity(0.6),
                  cutOffY: cutOffYValue,
                  applyCutOffY: true,
                ),
                dotData: FlDotData(
                  show: false,
                ),
              ),
            ],
            minY: -3,
            maxY: 11,
            titlesData: FlTitlesData(
              show: true,
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                axisNameWidget: const Text(
                  '2019',
                  style: _dateTextStyle,
                ),
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 18,
                  interval: 1,
                  getTitlesWidget: bottomTitleWidgets,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  reservedSize: 40,
                  getTitlesWidget: leftTitleWidgets,
                ),
              ),
            ),
            gridData: FlGridData(
              show: false
            ),
          ),
        ),
      ),
    );
  }
}