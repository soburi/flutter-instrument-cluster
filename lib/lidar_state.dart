class LidarPoint {
  final double angle;
  final double distance;

  const LidarPoint({required this.angle, required this.distance});

  LidarPoint copyWith({double? angle, double? distance}) {
    return LidarPoint(
      angle: angle ?? this.angle,
      distance: distance ?? this.distance,
    );
  }
}

class LidarState {
  final List<LidarPoint> points;

  const LidarState({required this.points});

  LidarState copyWith({List<LidarPoint>? points}) {
    return LidarState(points: points ?? this.points);
  }
}
