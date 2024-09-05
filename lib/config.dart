// SPDX-License-Identifier: Apache-2.0
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yaml/yaml.dart';

class KuksaConfig {
  final String hostname;
  final int port;
  final String authorization;
  final bool use_tls;
  final List<int> ca_certificate;
  final String tls_server_name;

  static String configFilePath = '/etc/xdg/AGL/cluster-dashboard.yaml';
  static String defaultHostname = 'localhost';
  static int defaultPort = 55555;
  static String defaultCaCertPath = '/etc/kuksa-val/CA.pem';

  KuksaConfig(
      {required this.hostname,
      required this.port,
      required this.authorization,
      required this.use_tls,
      required this.ca_certificate,
      required this.tls_server_name});
}

// NOTE: This may need to be changed to a FutureProvider to avoid slowing
//       down the top-level widget initState...

final kuksaConfigProvider = Provider((ref) {
  final configFile = File(KuksaConfig.configFilePath);
  try {
    print("Reading configuration ${KuksaConfig.configFilePath}");
    String content = configFile.readAsStringSync();
    final dynamic yamlMap = loadYaml(content);

    String hostname = KuksaConfig.defaultHostname;
    if (yamlMap.containsKey('hostname')) {
      hostname = yamlMap['hostname'];
    }

    int port = KuksaConfig.defaultPort;
    if (yamlMap.containsKey('port')) {
      port = yamlMap['port'];
    }

    String token = "";
    if (yamlMap.containsKey('authorization')) {
      String s = yamlMap['authorization'];
      if (s.isNotEmpty) {
        if (s.startsWith("/")) {
          debugPrint("Reading authorization token $s");
          try {
            token = File(s).readAsStringSync();
          } on Exception catch (_) {
            print("ERROR: Could not read authorization token file $token");
            token = "";
          }
        } else {
          token = s;
        }
      }
    }
    //debugPrint("authorization = $token");

    bool use_tls = false;
    if (yamlMap.containsKey('use-tls')) {
      var value = yamlMap['use-tls'];
      if (value is bool) use_tls = value;
    }
    //debugPrint("Use TLS = $use_tls");

    List<int> ca_cert = [];
    String ca_path = KuksaConfig.defaultCaCertPath;
    if (yamlMap.containsKey('ca-certificate')) {
      ca_path = yamlMap['ca-certificate'];
    }
    try {
      ca_cert = File(ca_path).readAsBytesSync();
    } on Exception catch (_) {
      print("ERROR: Could not read CA certificate file $ca_path");
      ca_cert = [];
    }
    //debugPrint("CA cert = $ca_cert");

    String tls_server_name = "";
    if (yamlMap.containsKey('tls-server-name')) {
      tls_server_name = yamlMap['tls-server-name'];
    }

    return KuksaConfig(
        hostname: hostname,
        port: port,
        authorization: token,
        use_tls: use_tls,
        ca_certificate: ca_cert,
        tls_server_name: tls_server_name);
  } on Exception catch (_) {
    return KuksaConfig(
        hostname: KuksaConfig.defaultHostname,
        port: KuksaConfig.defaultPort,
        authorization: "",
        use_tls: false,
        ca_certificate: [],
        tls_server_name: "");
  }
});
