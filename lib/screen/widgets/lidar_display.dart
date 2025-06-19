// SPDX-License-Identifier: Apache-2.0

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Uses [LidarPoint] data quantized in 0.1° increments.
import '../../lidar_provider.dart';

class LidarDisplay extends ConsumerWidget {
  final double maxDistance;
  final double? size;
  final Color backgroundColor;
  const LidarDisplay({
    Key? key,
    required this.maxDistance,
    this.size,
    this.backgroundColor = const Color(0xFFB0BEC5), // light blue-grey
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final points = ref.watch(lidarProvider).points;
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _LidarPainter(
          points: points,
          maxDistance: maxDistance,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}

class _LidarPainter extends CustomPainter {
  final List<LidarPoint> points;
  final double maxDistance;
  final Color backgroundColor;

  _LidarPainter({
    required this.points,
    required this.maxDistance,
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 2;

    final fillPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, fillPaint);
    canvas.drawCircle(center, radius, borderPaint);

    final pointPaint = Paint()..color = Colors.green;

    for (final p in points) {
      final r = (p.distance / maxDistance) * radius;
      final ang = p.angle * pi / 180;
      final offset = Offset(
        center.dx + r * cos(ang),
        center.dy - r * sin(ang),
      );
      canvas.drawCircle(offset, 2.0, pointPaint);
    }
  }

  @override
  bool shouldRepaint(covariant _LidarPainter oldDelegate) {
    return oldDelegate.points != points ||
        oldDelegate.maxDistance != maxDistance ||
        oldDelegate.backgroundColor != backgroundColor;
  }
}
