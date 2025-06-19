import 'dart:async';                           // StreamSubscription 用
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'lidar_state.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Provider 定義
// ─────────────────────────────────────────────────────────────────────────────
final lidarProvider =
    StateNotifierProvider<LidarNotifier, LidarState>(
  (ref) => LidarNotifier(),
);

// ─────────────────────────────────────────────────────────────────────────────
// Notifier 本体
// ─────────────────────────────────────────────────────────────────────────────
class LidarNotifier extends StateNotifier<LidarState> {
  LidarNotifier() : super(const LidarState(points: []));

  StreamSubscription<List<LidarPoint>>? _sub;

  /// 外部ストリームを購読開始
  void listenTo(Stream<List<LidarPoint>> stream) {
    _sub?.cancel();               // 既存購読があれば解除
    _sub = stream.listen(update);  // 新しい購読
  }

  /// State を更新
  void update(List<LidarPoint> points) {
    state = state.copyWith(points: points);
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
}
