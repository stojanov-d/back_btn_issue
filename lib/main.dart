import 'package:back_btn_issue/router.dart';
import 'package:back_btn_issue/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';

void main() {
  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs=true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => DetailsRoute().go(context),
          child: const Text('Go to the Details screen'),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => MoreDetailsRoute(id: "some:information:blabla").push(context),
          child: const Text('Go to more details Screen'),
        ),
      ),
    );
  }
}

class MoreDetailsScreen extends StatelessWidget {
  const MoreDetailsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('More details Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => EvenMoreDetailsRoute(id: 'testing:123:asdasd').push(context),
          child: const Text('Go to even more details screen'),
        ),
      ),
    );
  }
}

class EvenMoreDetailsScreen extends StatelessWidget {
  const EvenMoreDetailsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Even more details screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => DetailsRoute().go(context),
          child: const Text('Go back to more details screen'),
        ),
      ),
    );
  }
}