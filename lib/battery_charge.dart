import 'package:flutter/material.dart';

import 'battery_charge_painter.dart';

class BatteryCharge extends StatefulWidget {
  const BatteryCharge({Key? key}) : super(key: key);

  @override
  State<BatteryCharge> createState() => _BatteryChargeState();
}

class _BatteryChargeState extends State<BatteryCharge> {
  bool _isReversed = false;

  IntTween get chargeTween {
    if (_isReversed) {
      return IntTween(begin: 100, end: 0);
    }

    return IntTween(begin: 0, end: 100);
  }

  void repeatReversed() {
    setState(() {
      _isReversed = !_isReversed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: chargeTween,
      duration: const Duration(seconds: 2),
      onEnd: repeatReversed,
      builder: (_, charge, __) {
        return CustomPaint(
          size: const Size(200, 200),
          painter: BatteryChargePainter(
            charge: charge,
          ),
        );
      },
    );
  }
}
