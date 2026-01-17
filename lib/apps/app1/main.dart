import 'package:flutter/material.dart';
import 'package:multi_app_flavor/multi_app_flavor.dart';
import '../../shared/my_app.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.app1,
    name: 'Application 1',
    color: Colors.blue,
    values: {
      'baseUrl': 'https://app1.com/api',
    },
  );

  runApp(const MyApp());
}
