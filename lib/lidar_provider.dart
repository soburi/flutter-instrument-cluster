// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_riverpod/flutter_riverpod.dart';

class LidarPoint {
  /// Angle in degrees. Normalized to 0.1° increments between 0 and <360.
  final double angle;
  final double distance;

  LidarPoint({required double angle, required this.distance})
      : angle = (((angle % 360) * 10).round() / 10);
}

class LidarState {
  final List<LidarPoint> points;
  LidarState({required this.points});

  LidarState copyWith({List<LidarPoint>? points}) {
    return LidarState(points: points ?? this.points);
  }
}

class LidarNotifier extends StateNotifier<LidarState> {
  LidarNotifier() : super(LidarState(points: []));

  void update(List<LidarPoint> points) {
    state = state.copyWith(
      points: [for (final p in points) LidarPoint(angle: p.angle, distance: p.distance)],
    );
  }
}

final lidarProvider =
    StateNotifierProvider<LidarNotifier, LidarState>((ref) => LidarNotifier());
