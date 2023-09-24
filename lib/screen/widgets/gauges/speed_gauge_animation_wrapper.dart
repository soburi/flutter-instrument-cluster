// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/gauges/gauge_props.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/gauges/gauge_widget.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vehicle_status_provider.dart';

class SpeedGauge extends HookConsumerWidget {
  final double screenHeight;
  final GaugeColors? gaugeColor;
  const SpeedGauge({Key? key, required this.screenHeight, this.gaugeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double speed = ref.watch(vehicleStatusProvider.select((p) => p.speed));
    final String units = ref.watch(vehicleStatusProvider.select((p) => p.vehicleDistanceUnit));

    const double minSpeed = 0;
    const double maxSpeed = 240;
    const Duration sweepDuration = Duration(milliseconds: 200);
    double speedScaling = (units == "mi") ? 0.621504 : 1.0;

    final animationController = useAnimationController(
      lowerBound: minSpeed,
      upperBound: maxSpeed,
    )..animateTo(speedScaling * speed,
        duration: sweepDuration, curve: Curves.linearToEaseOut);

    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomGauge(
              size: (248 * screenHeight) / 480,
              low: minSpeed,
              high: maxSpeed,
              mainValue: animationController.value,
              label: (units == "mi") ? "mph" : "Km/h",
              zeroTickLabel: minSpeed.toInt().toString(),
              maxTickLabel: maxSpeed.toInt().toString(),
              inPrimaryColor: gaugeColor?.inPrimary,
              outPrimaryColor: gaugeColor?.outPrimary,
              secondaryColor: gaugeColor?.secondary,
            ),
          );
        });
  }
}

final gaugeColorProvider = Provider.family<GaugeColors, String>((ref, mode) {
  switch (mode) {
    case "normal":
      return GaugeColors(inPrimary: Colors.red);
    case "sports":
      return GaugeColors(inPrimary: Colors.blue);
    case "eco":
      return GaugeColors(inPrimary: Colors.green);
    default:
      return GaugeColors();
  }
});
