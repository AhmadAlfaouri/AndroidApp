import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Timeline',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SalesTimeline(),
    );
  }
}

class SalesTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monthly Sales Timeline'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 120,
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    const style = TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    );
                    Widget text;
                    switch (value.toInt()) {
                      case 0:
                        text = Text('Jan', style: style);
                        break;
                      case 1:
                        text = Text('Feb', style: style);
                        break;
                      case 2:
                        text = Text('Mar', style: style);
                        break;
                      case 3:
                        text = Text('Apr', style: style);
                        break;
                      case 4:
                        text = Text('May', style: style);
                        break;
                      case 5:
                        text = Text('Jun', style: style);
                        break;
                      case 6:
                        text = Text('Jul', style: style);
                        break;
                      case 7:
                        text = Text('Aug', style: style);
                        break;
                      case 8:
                        text = Text('Sep', style: style);
                        break;
                      case 9:
                        text = Text('Oct', style: style);
                        break;
                      case 10:
                        text = Text('Nov', style: style);
                        break;
                      case 11:
                        text = Text('Dec', style: style);
                        break;
                      default:
                        text = Text('', style: style);
                        break;
                    }
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: text,
                    );
                  },
                  reservedSize: 40,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    return Text(
                      '${value.toInt()}k',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    );
                  },
                ),
              ),
            ),
            gridData: FlGridData(show: false),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: Colors.blueAccent, width: 2),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 50),
                  FlSpot(1, 30),
                  FlSpot(2, 40),
                  FlSpot(3, 80),
                  FlSpot(4, 100),
                  FlSpot(5, 70),
                  FlSpot(6, 90),
                  FlSpot(7, 110),
                  FlSpot(8, 80),
                  FlSpot(9, 60),
                  FlSpot(10, 70),
                  FlSpot(11, 100),
                ],
                isCurved: true,
                color: Colors.blueAccent,
                barWidth: 4,
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.blueAccent.withOpacity(0.3),
                ),
                dotData: FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, bar, index) {
                    return FlDotCirclePainter(
                      radius: 4,
                      color: Colors.blueAccent,
                      strokeWidth: 2,
                      strokeColor: Colors.blueAccent.withOpacity(0.5),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
