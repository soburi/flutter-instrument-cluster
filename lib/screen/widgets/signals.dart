// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vehicle_status_provider.dart';

class Signals extends ConsumerWidget {
  final double screenHeight;
  static Color idleColor = Colors.grey.shade600;
  const Signals({
    Key? key,
    required this.screenHeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isLowBeam = ref.watch(vehicleStatusProvider.select((p) => p.isLowBeam));
    final bool isHighBeam = ref.watch(vehicleStatusProvider.select((p) => p.isHighBeam));
    final bool isHazardLightOn = ref.watch(vehicleStatusProvider.select((p) => p.isHazardLightOn));
    final bool isParkingOn = ref.watch(vehicleStatusProvider.select((p) => p.isParkingOn));
    final bool isBatteryCharging = ref.watch(vehicleStatusProvider.select((p) => p.isBatteryCharging));
    final bool isMILon = ref.watch(vehicleStatusProvider.select((p) => p.isMILon));
    final bool isSteeringLaneWarning = ref.watch(vehicleStatusProvider.select((p) => p.isSteeringLaneWarning));
    final bool isSteeringCruiseEnable = ref.watch(vehicleStatusProvider.select((p) => p.isSteeringCruiseEnable));
    final bool isSteeringCruiseSet = ref.watch(vehicleStatusProvider.select((p) => p.isSteeringCruiseSet));

    return Wrap(
      spacing: 14,
      runAlignment: WrapAlignment.spaceBetween,
      alignment: WrapAlignment.spaceEvenly,
      children: [
        isLowBeam
            ? Image.asset("images/low-beam.png",
                color: Colors.green, width: (20 * screenHeight) / 480)
            : isHighBeam
                ? Image.asset("images/high-beam.png",
                    color: Colors.green, width: (20 * screenHeight) / 480)
                : Image.asset("images/high-beam.png",
                    color: idleColor, width: (20 * screenHeight) / 480),
        Image.asset("images/hazard.png",
            color: isHazardLightOn ? Colors.red : idleColor,
            width: (20 * screenHeight) / 480),
        Image.asset("images/parking.png",
            color: isParkingOn ? Colors.green : idleColor,
            width: (20 * screenHeight) / 480),
        Image.asset("images/battery.png",
            color: isBatteryCharging ? Colors.green : Colors.red,
            width: (20 * screenHeight) / 480),
        Image.asset("images/malfunction.png",
            color: isMILon ? Colors.red : idleColor,
            width: (20 * screenHeight) / 480),
        //
        Image.asset("images/openDoor.png",
            color: isMILon ? Colors.white : idleColor,
            width: (20 * screenHeight) / 480),

        Image.asset("images/seatBelt.png",
            color: isMILon ? Colors.white : idleColor,
            width: (20 * screenHeight) / 480),

        //
        Image.asset("images/lane.png",
            color: (isSteeringLaneWarning) ? Colors.white : idleColor,
            width: (25 * screenHeight) / 480),
        Image.asset("images/cruise.png",
            color: (isSteeringCruiseEnable)
                ? (isSteeringCruiseSet)
                    ? Colors.green
                    : Colors.orange
                : idleColor,
            width: (20 * screenHeight) / 480),
      ],
    );
  }
}
