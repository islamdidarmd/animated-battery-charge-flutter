import 'package:animated_battery_charge_flutter/battery_charge_painter.dart';
import 'package:flutter/material.dart';

class AnimatedBatteryChargePage extends StatelessWidget {
  const AnimatedBatteryChargePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Battery Charge')),
      body: Center(
        child: CustomPaint(
          size: const Size(200, 200),
          painter: BatteryChargePainter(
            charge: 80,
          ),
        ),
      ),
    );
  }
}
