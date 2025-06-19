// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_cluster_dashboard/provider.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/gauges/gauge_props.dart';
import 'package:flutter_cluster_dashboard/screen/paints/bottombar_paint.dart';
import 'package:flutter_cluster_dashboard/screen/paints/topbar_paint.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/gauges/rpm_gauge_animation_wrapper.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/left_bar.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/performance_mode.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/right_bar.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/gauges/speed_gauge_animation_wrapper.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/signals.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/turn_signal.dart';
import 'package:flutter_cluster_dashboard/screen/widgets/lidar_display.dart';
import 'package:flutter_cluster_dashboard/lidar_provider.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vss_client.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vss_provider.dart';
import 'package:flutter_cluster_dashboard/vehicle-signals/vehicle_status_provider.dart';
import 'package:intl/intl.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  late VssClient vss;

  @override
  void initState() {
    super.initState();

    vss = ref.read(vssClientProvider);
    vss.run();

    // Sample LIDAR data with 0.1° resolution
    ref.read(lidarProvider.notifier).update([
      LidarPoint(angle: 0.2, distance: 5),
      LidarPoint(angle: 45.1, distance: 8),
      LidarPoint(angle: 90.4, distance: 6),
      LidarPoint(angle: 135.7, distance: 7),
      LidarPoint(angle: 180.0, distance: 4),
    ]);
  }

  GaugeColors? getGaugeColor(String mode) {
    return (mode == "economy")
        ? GaugeProps.ecoModeColor
        : (mode == "sport")
            ? GaugeProps.sportModeColor
            : null;
  }

  String addZero(int val) {
    String res = val.toString();
    if (res.length < 2) {
      if (res.isEmpty) {
        return "00";
      } else if (res.length == 1) {
        return "0$res";
      }
    }
    return res;
  }

  double calcPadding(double value, double height) {
    // values wrt to values at 720 height
    return (value * height) / 720;
  }

  @override
  Widget build(BuildContext context) {
    final bool isLeftIndicator = ref.watch(vehicleStatusProvider.select((p) => p.isLeftIndicator));
    final bool isRightIndicator = ref.watch(vehicleStatusProvider.select((p) => p.isRightIndicator));
    final String performanceMode = ref.watch(vehicleStatusProvider.select((p) => p.performanceMode));
    final String selectedGear = ref.watch(vehicleStatusProvider.select((p) => p.selectedGear));
    final double ambientAirTemp = ref.watch(vehicleStatusProvider.select((p) => p.ambientAirTemp));
    final TemperatureUnit tempUnit = ref.watch(vehicleStatusProvider.select((p) => p.temperatureUnit));

    String ambientAirTempString = "";
    if (tempUnit == TemperatureUnit.celsius) {
      ambientAirTempString += "${ambientAirTemp.toStringAsFixed(0)} ${"\u00B0"}C";
    } else {
      ambientAirTempString += "${((ambientAirTemp * 9 / 5) + 32).toStringAsFixed(0)} ${"\u00B0"}F";
    }

    final clock = ref.watch(clockProvider);
    final windowHeight = MediaQuery.of(context).size.height;
    final windowWidth = MediaQuery.of(context).size.width;

    double screenHeight = windowHeight;
    double screenWidth = windowWidth;

    double ratHeight = (windowWidth * 9) / 16;
    double ratWidth = (windowHeight * 16) / 9;

    if (ratWidth <= windowWidth) {
      screenHeight = windowHeight;
      screenWidth = ratWidth;
    } else {
      screenHeight = ratHeight;
      screenWidth = windowWidth;
    }

    return Scaffold(
      backgroundColor: GaugeProps.bgColor,
      body: SafeArea(
        child: Center(
          child: Center(
            child: SizedBox(
              width: screenWidth,
              height: screenHeight,
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //TopBarPainter
                  Flexible(
                    flex: 1,
                    child: Stack(
                      children: [
                        TurnSignal(
                          screenHeight: screenHeight,
                          isLeftOn: isLeftIndicator,
                          isRightOn: isRightIndicator,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: LidarDisplay(
                            maxDistance: 10,
                            size: (80 * screenHeight) / 480,
                          ),
                        ),
                        Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // mid section of top bar
                            Flexible(
                              flex: 1,
                              child: SizedBox(
                                width: (400 * screenHeight) / 480,
                                height: (65 * screenHeight) / 480,
                                child: CustomPaint(
                                  painter: TopBarPainter(),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        DateFormat('EEEE')
                                            .format(clock)
                                            .substring(0, 3),
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 184, 183, 183),
                                            fontSize: (20 * screenHeight) / 480,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                          width: (40 * screenHeight) / 480),
                                      Text(
                                        "${clock.hour}:${addZero(clock.minute)}",
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: (30 * screenHeight) / 480,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                          width: (30 * screenHeight) / 480),
                                      Text(
                                        ambientAirTempString,
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 184, 183, 183),
                                            fontSize: (20 * screenHeight) / 480,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // mid section
                  Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Stack(
                      children: [
                        //left and right arc
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              calcPadding(60, screenHeight),
                              calcPadding(60, screenHeight),
                              calcPadding(60, screenHeight),
                              0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  LeftArc(screenHeight: screenHeight),
                                  Positioned(
                                    child: Image.asset(
                                      "images/temperature-icon.png",
                                      color: Colors.white,
                                      width: (13 * screenHeight) / 480,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  RightArc(screenHeight: screenHeight),
                                  Positioned(
                                      child: Image.asset(
                                    "images/fuel-icon.png",
                                    color: Colors.white,
                                    width: (18 * screenHeight) / 480,
                                  ))
                                ],
                              ),
                            ],
                          ),
                        ),
                        //logo area
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              calcPadding(60, screenHeight),
                              0,
                              calcPadding(60, screenHeight),
                              0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: (550 * screenHeight) / 720,
                                height: (450 * screenHeight) / 720,
                                child: Flex(
                                  direction: Axis.vertical,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // performance mode
                                    Flexible(
                                      flex: 1,
                                      child: PerformanceMode(
                                          size: Size((90 * screenHeight) / 480,
                                              (20 * screenHeight) / 480),
                                          mode: performanceMode),
                                    ),
                                    // logo
                                    Flexible(
                                      flex: 6,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        width: (330 * screenHeight) / 720,
                                        child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical:
                                                    (36.0 * screenHeight) / 720,
                                                horizontal:
                                                    (48.0 * screenHeight) / 720),
                                            child: Image.asset(
                                                "images/logo_agl.png",
                                                width: (90 * screenHeight) / 480,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Flexible(
                                      flex: 1,
                                      child: SizedBox(),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //warning signals
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              calcPadding(0, screenHeight),
                              calcPadding(430, screenHeight),
                              calcPadding(0, screenHeight),
                              0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Signals(screenHeight: screenHeight),
                            ],
                          ),
                        ),
                        // gauges
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              calcPadding(70, screenHeight),
                              calcPadding(30, screenHeight),
                              calcPadding(70, screenHeight),
                              0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Speed Gauge
                              SpeedGauge(
                                screenHeight: screenHeight,
                                gaugeColor:
                                    getGaugeColor(performanceMode),
                              ),
                              //RPM Gauge
                              RPMGauge(
                                screenHeight: screenHeight,
                                gaugeColor:
                                    getGaugeColor(performanceMode),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // bottomBarPainter
                  Flexible(
                      flex: 1,
                      child: SizedBox(
                        width: (400 * screenHeight) / 480,
                        height: (50 * screenHeight) / 480,
                        child: CustomPaint(
                          size: Size((400 * screenHeight) / 480,
                              (50 * screenHeight) / 480),
                          painter: BottomBarPainter(),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                (selectedGear == Gear.parking)
                                    ? Text("P",
                                        style: GaugeProps.activeGearIconStyle(
                                            screenHeight))
                                    : Text("P",
                                        style: GaugeProps.gearIconStyle(
                                            screenHeight)),
                                (selectedGear == Gear.reverse)
                                    ? Text("R",
                                        style: GaugeProps.activeGearIconStyle(
                                            screenHeight))
                                    : Text("R",
                                        style: GaugeProps.gearIconStyle(
                                            screenHeight)),
                                (selectedGear == Gear.neutral)
                                    ? Text("N",
                                        style: GaugeProps.activeGearIconStyle(
                                            screenHeight))
                                    : Text("N",
                                        style: GaugeProps.gearIconStyle(
                                            screenHeight)),
                                (selectedGear == Gear.drive)
                                    ? Text("D",
                                        style: GaugeProps.activeGearIconStyle(
                                            screenHeight))
                                    : Text("D",
                                        style: GaugeProps.gearIconStyle(
                                            screenHeight)),
                              ]),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
