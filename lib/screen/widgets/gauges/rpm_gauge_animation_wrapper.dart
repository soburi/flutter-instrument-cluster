// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/gauges/gauge_props.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/gauges/gauge_widget.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vehicle_status_provider.dart';

class RPMGauge extends HookConsumerWidget {
  final double screenHeight;
  final GaugeColors? gaugeColor;
  const RPMGauge({Key? key, required this.screenHeight, this.gaugeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int rpm = ref.watch(vehicleStatusProvider.select((p) => p.rpm));

    const double minRPM = 0;
    const double maxRPM = 8000;
    const Duration sweepDuration = Duration(milliseconds: 200);

    final animationController = useAnimationController(
      lowerBound: minRPM,
      upperBound: maxRPM,
    )..animateTo(rpm.toDouble(),
        duration: sweepDuration, curve: Curves.linearToEaseOut);
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomGauge(
              size: (248 * screenHeight) / 480,
              low: minRPM,
              high: maxRPM,
              mainValue: animationController.value,
              label: "rpm",
              zeroTickLabel: minRPM.toString(),
              maxTickLabel: maxRPM.toString(),
              inPrimaryColor: gaugeColor?.inPrimary,
              outPrimaryColor: gaugeColor?.outPrimary,
              secondaryColor: gaugeColor?.secondary,
            ),
          );
        });
  }
}
