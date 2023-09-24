// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_cluster_dashboard/screen/paints/arc_painter.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vehicle_status_provider.dart';

class RightArc extends HookConsumerWidget {
  final double screenHeight;
  const RightArc({Key? key, required this.screenHeight}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double fuelLevel = ref.watch(vehicleStatusProvider.select((p) => p.fuelLevel));
    final animationController = useAnimationController(
      lowerBound: 0,
      upperBound: 100,
    )..animateTo(fuelLevel,
        duration: const Duration(milliseconds: 500));

    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return CustomPaint(
          size: Size(0, (220 * screenHeight) / 480),
          painter: RightPainter(
              radi: (170 * screenHeight) / 480,
              currentValue: animationController.value,
              bottomPadding: 17,
              color: Color.lerp(Colors.red, Colors.green,
                      (animationController.value / 100)) ??
                  Colors.blue),
        );
      },
    );
  }
}
