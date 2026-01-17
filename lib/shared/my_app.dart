import 'package:flutter/material.dart';
import 'package:multi_app_flavor/multi_app_flavor.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: MaterialApp(
        title: FlavorConfig.instance.name,
        theme: ThemeData(
          primarySwatch: FlavorConfig.instance.color as MaterialColor,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FlavorConfig.instance.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Flavor: ${FlavorConfig.instance.flavor}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            Text('Custom Value: ${FlavorConfig.getValue('baseUrl')}'),
            const SizedBox(height: 20),
            FlavorBuilder(
              onApp1: (_) => const Icon(Icons.home, size: 50, color: Colors.blue),
              onApp2: (_) => const Icon(Icons.business, size: 50, color: Colors.green),
              onApp3: (_) => const Icon(Icons.school, size: 50, color: Colors.orange),
              orElse: (_) => const Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
