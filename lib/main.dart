import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:universal_html/html.dart';
import 'package:web_routing_app/fluro_router.dart';
import 'package:web_routing_app/splash.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    final loader = document.getElementsByClassName('indeterminate');
    if (loader.isNotEmpty) {
      loader.first.remove();
    }

    Flurorouter.routeSettings();

    super.initState();
  }

  Route<dynamic>? routeSettings(RouteSettings settings) {
    if (settings.name == "/" || settings.name!.startsWith("/home")) {
      return Flurorouter.router.generator(settings);
    }
    return MaterialPageRoute(builder: (context) => const SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: routeSettings,
      debugShowCheckedModeBanner: false,
    );
  }
}
