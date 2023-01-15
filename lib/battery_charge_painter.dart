import 'package:flutter/material.dart';

class BatteryChargePainter extends CustomPainter {
  BatteryChargePainter({
    required this.charge,
  });

  final int charge;

  final double batteryShellWidth = 100;
  final double batteryShellHeight = 50;
  final double chargeWidth = 80;
  final double chargeHeight = 35;
  final double batteryPositivePowerHeight = 20;
  final double batteryPositivePowerWidth = 20;

  final batteryShellPainter = Paint()
    ..style = PaintingStyle.stroke
    ..color = Colors.black;

  final batteryChargePainter = Paint()
    ..style = PaintingStyle.fill
    ..color = Colors.green;

  final batteryChargeStrokePainter = Paint()
    ..style = PaintingStyle.stroke
    ..color = Colors.black;

  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final center = Offset(height / 2, width / 2);

    final batteryPowerCenter = Offset(
        center.dx + batteryShellWidth / 2 + batteryPositivePowerWidth / 2,
        center.dy);

    final shellRect = Rect.fromCenter(
        center: center, width: batteryShellWidth, height: batteryShellHeight);

    final fullChargeRect = Rect.fromCenter(
        center: center, width: chargeWidth, height: chargeHeight);

    final positivePowerRect = Rect.fromCenter(
      center: batteryPowerCenter,
      width: batteryPositivePowerWidth,
      height: batteryPositivePowerHeight,
    );

    final chargeRect = Rect.fromLTWH(
      fullChargeRect.left,
      fullChargeRect.top,
      (charge * 100) / width,
      chargeHeight,
    );

    canvas.drawRect(shellRect, batteryShellPainter);
    canvas.drawRect(fullChargeRect, batteryChargeStrokePainter);
    canvas.drawRect(chargeRect, batteryChargePainter);
    canvas.drawRect(positivePowerRect, batteryShellPainter);
  }

  @override
  bool shouldRepaint(BatteryChargePainter oldDelegate) {
    return oldDelegate.charge != charge;
  }
}
