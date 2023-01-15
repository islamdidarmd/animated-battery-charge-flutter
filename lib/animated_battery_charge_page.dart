import 'battery_charge.dart';
import 'package:flutter/material.dart';

class AnimatedBatteryChargePage extends StatelessWidget {
  const AnimatedBatteryChargePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Battery Charge')),
      body: const Center(
        child: BatteryCharge(),
      ),
    );
  }
}
