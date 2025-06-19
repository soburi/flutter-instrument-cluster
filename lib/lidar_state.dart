
class LidarPoint {
  /// Angle in degrees. Normalized to 0.1° increments between 0 and <360.
  final double angle;
  final double distance;

  LidarPoint({required double angle, required this.distance})
      : angle = (((angle % 360) * 10).round() / 10);
}


class LidarState {
  final List<LidarPoint> points;
  const LidarState({required this.points});

  LidarState copyWith({List<LidarPoint>? points}) =>
      LidarState(points: points ?? this.points);
}
