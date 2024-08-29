import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Line Chart Example',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: LineChartSample(),
    );
  }
}

class LineChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line Chart Example'),
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
                      color: Color(0xff68737d),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
                sideTitles: SideTitles(showTitles: true, reservedSize: 40),
              ),
            ),
            gridData: FlGridData(show: false),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: Colors.brown, width: 2),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 40),
                  FlSpot(1, 50),
                  FlSpot(2, 45),
                  FlSpot(3, 55),
                  FlSpot(4, 60),
                  FlSpot(5, 65),
                  FlSpot(6, 70),
                  FlSpot(7, 80),
                  FlSpot(8, 90),
                  FlSpot(9, 100),
                  FlSpot(10, 95),
                  FlSpot(11, 85),
                ],
                isCurved: true,
                color: Colors.brown,
                barWidth: 4,
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.brown.withOpacity(0.3),
                ),
                dotData: FlDotData(
                  show: true,
                  checkToShowDot: (spot, barData) {
                    return true;
                  },
                  getDotPainter: (spot, percent, bar, index) {
                    return FlDotCirclePainter(
                      radius: 4,
                      color: Colors.brown,
                      strokeWidth: 2,
                      strokeColor: Colors.brown.withOpacity(0.5),
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
