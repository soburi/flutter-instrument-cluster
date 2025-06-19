// SPDX-License-Identifier: Apache-2.0
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';
import 'package:flutter_cluster_dashboard/generated/kuksa/val/v1/val.pbgrpc.dart';
import 'package:flutter_cluster_dashboard/config.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vss_client.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vss_path.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vehicle_status_provider.dart';
import 'package:flutter_cluster_dashboard/provider.dart';

class DashboardVssClient extends VssClient {
  @override
  final List<String> signals = [
    VSSPath.vehicleSpeed,
    VSSPath.vehicleEngineRPM,
    VSSPath.vehicleFuelLevel,
    VSSPath.vehicleCoolantTemp,
    VSSPath.vehicleAmbientAirTemperature,
    VSSPath.vehicleLeftIndicator,
    VSSPath.vehicleRightIndicator,
    VSSPath.vehicleHazardLightOn,
    VSSPath.vehicleHighBeamOn,
    VSSPath.vehicleLowBeamOn,
    VSSPath.vehicleSelectedGear,
    VSSPath.vehiclePerformanceMode,
    VSSPath.vehicleParkingLightOn,
    VSSPath.vehicleTrunkLocked,
    VSSPath.vehicleTrunkOpen,
    VSSPath.vehicleMIL,
    VSSPath.vehicleCruiseControlError,
    VSSPath.vehicleCruiseControlSpeedSet,
    VSSPath.vehicleCruiseControlActive,
    VSSPath.vehicleBatteryChargingStatus,
    VSSPath.vehicleDistanceUnit,
    VSSPath.vehicleTemperatureUnit,
    VSSPath.steeringCruiseEnable,
    VSSPath.steeringCruiseSet,
    VSSPath.steeringCruiseResume,
    VSSPath.steeringCruiseCancel,
    VSSPath.steeringInfo,
    VSSPath.steeringLaneDepWarn,
    VSSPath.lidarAngle,
    VSSPath.lidarDistance
  ];

  DashboardVssClient(
      {required super.config,
      required super.channel,
      required super.stub,
      required super.ref});

  static String? numToGear(int? number) {
    switch (number) {
      case -1:
        return 'R';
      case 0:
        return 'N';
      case 126:
        return 'P';
      case 127:
        return 'D';
      default:
        return null;
    }
  }

  @override
  void handleSignalUpdates(EntryUpdate update) {
    var vehicleStatus = ref.read(vehicleStatusProvider.notifier);
    switch (update.entry.path) {
      case VSSPath.vehicleSpeed:
        if (update.entry.value.hasFloat()) {
          vehicleStatus.update(speed: update.entry.value.float);
        }
        break;
      case VSSPath.vehicleEngineRPM:
        if (update.entry.value.hasUint32()) {
          vehicleStatus.update(rpm: update.entry.value.uint32);
        }
        break;
      case VSSPath.vehicleFuelLevel:
        if (update.entry.value.hasUint32()) {
          vehicleStatus.update(fuelLevel: update.entry.value.uint32.toDouble());
        }
        break;
      case VSSPath.vehicleCoolantTemp:
        if (update.entry.value.hasFloat()) {
          vehicleStatus.update(coolantTemp: update.entry.value.float);
        }
        break;
      case VSSPath.vehicleAmbientAirTemperature:
        if (update.entry.value.hasFloat()) {
          vehicleStatus.update(ambientAirTemp: update.entry.value.float);
        }
        break;
      case VSSPath.vehicleLeftIndicator:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(isLeftIndicator: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleRightIndicator:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(isRightIndicator: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleHighBeamOn:
        if (update.entry.value.hasBool_12()) {
          if (update.entry.value.bool_12) {
            vehicleStatus.update(isHighBeam: true);
            vehicleStatus.update(isLowBeam: false);
          } else {
            vehicleStatus.update(isHighBeam: false);
          }
        }
        break;
      case VSSPath.vehicleParkingLightOn:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(isParkingOn: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleLowBeamOn:
        if (update.entry.value.hasBool_12()) {
          if (update.entry.value.bool_12) {
            vehicleStatus.update(isHighBeam: false);
            vehicleStatus.update(isLowBeam: true);
          } else {
            vehicleStatus.update(isLowBeam: false);
          }
        }
        break;
      case VSSPath.vehicleHazardLightOn:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(isHazardLightOn: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleSelectedGear:
        if (update.entry.value.hasInt32()) {
          vehicleStatus.update(
              selectedGear: numToGear(update.entry.value.int32));
        }
        break;
      case VSSPath.vehiclePerformanceMode:
        if (update.entry.value.hasString()) {
          vehicleStatus.update(performanceMode: update.entry.value.string);
        }
        break;
      case VSSPath.vehicleTraveledDistance:
        if (update.entry.value.hasFloat()) {
          vehicleStatus.update(traveledDistance: update.entry.value.float);
        }
        break;
      case VSSPath.vehicleTrunkLocked:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(isTrunkLocked: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleTrunkOpen:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(isTrunkOpen: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleMIL:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(isMILon: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleCruiseControlError:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(
              isCruiseControlError: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleCruiseControlSpeedSet:
        if (update.entry.value.hasFloat()) {
          vehicleStatus.update(cruiseControlSpeed: update.entry.value.float);
        }
        break;
      case VSSPath.vehicleCruiseControlActive:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(
              isCruiseControlActive: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleBatteryChargingStatus:
        if (update.entry.value.hasBool_12()) {
          vehicleStatus.update(isBatteryCharging: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleDistanceUnit:
        if (update.entry.value.hasString()) {
          DistanceUnit unit = DistanceUnit.kilometers;
          if (update.entry.value.string == "MILES") unit = DistanceUnit.miles;
          vehicleStatus.update(distanceUnit: unit);
        }
        break;
      case VSSPath.vehicleTemperatureUnit:
        if (update.entry.value.hasString()) {
          TemperatureUnit unit = TemperatureUnit.celsius;
          if (update.entry.value.string == "F")
            unit = TemperatureUnit.fahrenheit;
          vehicleStatus.update(temperatureUnit: unit);
        }
        break;

      // Steering wheel switches
      case VSSPath.steeringCruiseEnable:
        if (update.entry.value.hasBool_12()) {
          if (update.entry.value.bool_12) {
            if (vehicleStatus.state.isSteeringCruiseEnable) {
              vehicleStatus.update(isSteeringCruiseEnable: false);
              vehicleStatus.update(isSteeringCruiseSet: false);
            } else {
              vehicleStatus.update(isSteeringCruiseEnable: true);
            }
          }
        }
        break;
      case VSSPath.steeringCruiseSet:
        if (update.entry.value.hasBool_12()) {
          if (update.entry.value.bool_12 &&
              vehicleStatus.state.isSteeringCruiseEnable) {
            vehicleStatus.update(isSteeringCruiseSet: true);
          }
        }
        break;
      case VSSPath.steeringCruiseResume:
        if (update.entry.value.hasBool_12()) {
          if (update.entry.value.bool_12 &&
              vehicleStatus.state.isSteeringCruiseEnable) {
            vehicleStatus.update(isSteeringCruiseSet: true);
          }
        }
        break;
      case VSSPath.steeringCruiseCancel:
        if (update.entry.value.hasBool_12()) {
          if (update.entry.value.bool_12) {
            vehicleStatus.update(isSteeringCruiseSet: false);
          }
        }
        break;
      case VSSPath.steeringInfo:
        if (update.entry.value.hasBool_12()) {
          if (update.entry.value.bool_12) {
            vehicleStatus.update(
                isSteeringInfo: !vehicleStatus.state.isSteeringInfo);
          }
        }
        break;
      case VSSPath.steeringLaneDepWarn:
        if (update.entry.value.hasBool_12()) {
          if (update.entry.value.bool_12) {
            vehicleStatus.update(
                isSteeringLaneWarning:
                    !(vehicleStatus.state.isSteeringLaneWarning));
          }
        }
        break;
      case VSSPath.lidarAngle:
        if (update.entry.value.hasFloat()) {
          ref.read(lidarProvider.notifier)
              .setAngle(update.entry.value.float);
        }
        break;
      case VSSPath.lidarDistance:
        if (update.entry.value.hasFloat()) {
          ref.read(lidarProvider.notifier)
              .addDistance(update.entry.value.float);
        }
        break;

      default:
        print("ERROR: Unexpected path ${update.entry.path}");
        break;
    }
  }
}

final vssClientProvider = Provider((ref) {
  var config = ref.read(kuksaConfigProvider);
  debugPrint("Using ${config.hostname}:${config.port}");
  ChannelCredentials creds;
  if (config.use_tls && config.ca_certificate.isNotEmpty) {
    print("Using TLS");
    if (config.tls_server_name.isNotEmpty)
      creds = ChannelCredentials.secure(
          certificates: config.ca_certificate,
          authority: config.tls_server_name);
    else
      creds = ChannelCredentials.secure(certificates: config.ca_certificate);
  } else {
    creds = ChannelCredentials.insecure();
  }
  final channel = ClientChannel(config.hostname,
      port: config.port, options: ChannelOptions(credentials: creds));

  final stub = VALClient(channel);

  return DashboardVssClient(
      config: config, channel: channel, stub: stub, ref: ref);
});
