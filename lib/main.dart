import 'package:flutter/material.dart';

import 'animated_battery_charge_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Battery Charge',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AnimatedBatteryChargePage(),
    );
  }
}
