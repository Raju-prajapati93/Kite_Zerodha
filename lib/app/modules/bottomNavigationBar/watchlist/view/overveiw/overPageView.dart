import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kite/Widget/appStyle.dart';

class Overpageview extends StatelessWidget {
  const Overpageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Overview",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
               InkWell(
                 onTap: (){
                   Get.back();
                 },
                 child:  Icon(Icons.close, color: Colors.black54, size: 26),
               )
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "NIFTY 50",
                      style:AppStyle.nitMap,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "25,145.50",
                      style: AppStyle.numMap,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "-81.85   -0.32%",
                      style: AppStyle.redNumMap,
                    ),
                    SizedBox(height: 8),
                    // Dummy line (graph look)
                    Container(
                      width: 130,
                      height: 40,
                      child: CustomPaint(
                        painter: LineGraphPainter(),
                      ),
                    ),
                  ],
                ),

                // NIFTY BANK
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "NIFTY BANK",
                      style: AppStyle.nitMap,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "56,496.45",
                      style: AppStyle.numMap,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "-128.55   -0.22%",
                      style: AppStyle.redNumMap,
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 130,
                      height: 40,
                      child: CustomPaint(
                        painter: LineGraphPainter(),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 8),
            Text(
              "* Charts indicate 52 weeks trend",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),

            SizedBox(height: 30),

            // Funds section
            Text(
              "Funds",
              style: AppStyle.mediumHeding
            ),
            SizedBox(height: 10),
            Text(
              "₹0.00",
              style: AppStyle.numMap,
            ),
          ],
        ),
      ),
    );
  }
}
class LineGraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height * 0.6);
    path.lineTo(size.width * 0.2, size.height * 0.3);
    path.lineTo(size.width * 0.4, size.height * 0.5);
    path.lineTo(size.width * 0.6, size.height * 0.4);
    path.lineTo(size.width * 0.8, size.height * 0.6);
    path.lineTo(size.width, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}


