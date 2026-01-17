import 'package:flutter/material.dart';
import 'package:multi_app_flavor/multi_app_flavor.dart';
import '../../shared/my_app.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.app3,
    name: 'Application 3',
    color: Colors.orange,
    values: {
      'baseUrl': 'https://app3.com/api',
    },
  );

  runApp(const MyApp());
}
