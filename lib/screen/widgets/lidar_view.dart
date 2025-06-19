// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_cluster_dashboard/provider.dart';

class LidarView extends ConsumerWidget {
  final double size;
  const LidarView({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(lidarProvider.select((l) => l.points));
    return CustomPaint(
      size: Size(size, size),
      painter: _LidarPainter(data),
    );
  }
}

class _LidarPainter extends CustomPainter {
  final List<Offset> points;
  _LidarPainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    // draw background
    canvas.drawRect(
        Offset.zero & size,
        Paint()
          ..color = Colors.blueGrey.shade100
          ..style = PaintingStyle.fill);

    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;
    final double scale = size.width / 100;
    for (final p in points) {
      final dx = center.dx + p.dx * scale;
      final dy = center.dy + p.dy * scale;
      canvas.drawCircle(Offset(dx, dy), 2, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _LidarPainter oldDelegate) {
    return oldDelegate.points != points;
  }
}
