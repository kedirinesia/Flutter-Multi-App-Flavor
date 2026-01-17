import 'package:flutter/material.dart';
import 'package:multi_app_flavor/multi_app_flavor.dart';
import '../../shared/my_app.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.app2,
    name: 'Application 2',
    color: Colors.green,
    values: {
      'baseUrl': 'https://app2.com/api',
    },
  );

  runApp(const MyApp());
}
