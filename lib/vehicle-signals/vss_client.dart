// SPDX-License-Identifier: Apache-2.0
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';
import 'package:flutter_cluster_dashboard/generated/kuksa/val/v1/val.pbgrpc.dart';
import 'package:flutter_cluster_dashboard/generated/kuksa/val/v1/types.pb.dart';
import 'package:flutter_cluster_dashboard/config.dart';

abstract class VssClient {
  final KuksaConfig config;
  final ClientChannel channel;
  final VALClient stub;
  final Ref ref;

  // Extenders will likely override this
  final List<String> signals = [];

  VssClient({required this.config, required this.channel, required this.stub, required this.ref});

  // Abstract method extenders must implement
  void handleSignalUpdates(EntryUpdate update);

  void run() async {
    if (signals.isEmpty)
      return;

    var request = SubscribeRequest();
    for (var i = 0; i < signals.length; i++) {
      var entry = SubscribeEntry();
      entry.path = signals[i];
      entry.fields.add(Field.FIELD_PATH);
      entry.fields.add(Field.FIELD_VALUE);
      request.entries.add(entry);
    }

    try {
      Map<String, String> metadata = {};
      if (config.authorization.isNotEmpty) {
        metadata = {'authorization': "Bearer ${config.authorization}" };
      }
      var responseStream = stub.subscribe(request, options: CallOptions(metadata: metadata));
      await for (var response in responseStream) {
        for (var update in response.updates) {
          if (!(update.hasEntry() && update.entry.hasPath()))
            continue;
          handleSignalUpdates(update);
        }
      }
    } catch (e) {
      print(e);
    }
  }

  void setUint32(String path, int value, [bool actuator = true]) async {
    var dp = Datapoint()
      ..uint32 = value;
    set(path, dp, actuator);
  }

  void setInt32(String path, int value, [bool actuator = true]) async {
    var dp = Datapoint()
      ..int32 = value;
    set(path, dp, actuator);
  }

  void setBool(String path, bool value, [bool actuator = true]) async {
    var dp = Datapoint()
      ..bool_12 = value;
    set(path, dp, actuator);
  }

  void setString(String path, String value, [bool actuator = true]) async {
    var dp = Datapoint()
      ..string = value;
    set(path, dp, actuator);
  }

  void setFloat(String path, double value, [bool actuator = true]) async {
    var dp = Datapoint()
      ..float = value;
    set(path, dp, actuator);
  }

  void setDouble(String path, double value, [bool actuator = true]) async {
    var dp = Datapoint()
      ..double_18 = value;
    set(path, dp, actuator);
  }

  void set(String path, Datapoint dp, bool actuator) async {
    var entry = DataEntry()
      ..path = path;
    var update = EntryUpdate();
    if (actuator) {
      entry.actuatorTarget = dp;
      update.fields.add(Field.FIELD_ACTUATOR_TARGET);
    } else {
      entry.value = dp;
      update.fields.add(Field.FIELD_VALUE);
    }
    update.entry = entry;
    var request = SetRequest();
    request.updates.add(update);
    Map<String, String> metadata = {};
    if (config.authorization.isNotEmpty) {
      metadata = {'authorization': "Bearer ${config.authorization}" };
    }
    await stub.set(request, options: CallOptions(metadata: metadata));
  }

}
