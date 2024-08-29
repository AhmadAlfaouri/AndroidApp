import 'dart:ui';

import 'package:flutter/material.dart';



class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Color(0xFFF1E1B0),
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Products'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Color(0xFFF1E1B0), // Background color
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Text
              Text(
                'Welcome to your dashboard',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),

              // Top Stats
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _StatCard(
                    icon: Icons.monetization_on,
                    title: 'Total Sales',
                    value: '2500',
                  ),
                  _StatCard(
                    icon: Icons.shopping_cart,
                    title: 'Total Products',
                    value: '103',
                  ),
                  _StatCard(
                    icon: Icons.attach_money,
                    title: 'Total Income',
                    value: '\$2500000',
                  ),
                ],
              ),
              SizedBox(height: 20.0),

              // Chart
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CustomPaint(
                  painter: _LineChartPainter(),
                ),
              ),
              SizedBox(height: 20.0),

              // Latest Orders
              Text(
                'Latest Orders',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              _OrderTable(),
            ],
          ),
        ),
      ),
    );
  }
}

// Stat Card
class _StatCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  _StatCard({required this.icon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 64) / 3,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 40.0,
            color: Colors.brown,
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            value,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

// Line Chart Painter
class _LineChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.brown
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    List<Offset> points = [
      Offset(10.0, size.height - 40.0),
      Offset(40.0, size.height - 35.0),
      Offset(70.0, size.height - 30.0),
      Offset(100.0, size.height - 25.0),
      Offset(130.0, size.height - 20.0),
      Offset(160.0, size.height - 15.0),
      Offset(190.0, size.height - 10.0),
      Offset(220.0, size.height - 5.0),
      Offset(250.0, size.height - 20.0),
      Offset(280.0, size.height - 30.0),
      Offset(310.0, size.height - 40.0),
      Offset(340.0, size.height - 50.0),
      Offset(370.0, size.height - 60.0),
    ];

    canvas.drawPoints(PointMode.polygon, points, paint);

    final textStyle = TextStyle(
      color: Colors.grey[600],
      fontSize: 12.0,
    );

    for (int i = 0; i < points.length; i++) {
      TextSpan span = TextSpan(
        text: getMonth(i),
        style: textStyle,
      );
      TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );
      tp.layout();
      tp.paint(canvas, Offset(points[i].dx - 15, size.height - 20));
    }
  }

  String getMonth(int index) {
    List<String> months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return months[index];
  }

  @override
  bool shouldRepaint(_LineChartPainter oldDelegate) {
    return false;
  }
}

// Order Table
class _OrderTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Table(
        border: TableBorder.all(
          color: Colors.grey[300]!,
          width: 1.0,
        ),
        columnWidths: {
          0: FixedColumnWidth(150.0),
          1: FixedColumnWidth(100.0),
          2: FixedColumnWidth(100.0),
          3: FixedColumnWidth(100.0),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: [
              Text('Customer', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Order Date', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Total Price', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Delivery', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          TableRow(
            children: [
              Text('Customer name'),
              Text('12/3/2024'),
              Text('\$7005'),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text('Pending'),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Details'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
