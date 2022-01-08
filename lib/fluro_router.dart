import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:web_routing_app/home.dart';
import 'package:web_routing_app/splash.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static final _splashHandlar = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const SplashScreen();
  });

  static final _homeHandlar = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return HomeScreen(params: params["id"] != null ? params["id"][0] : null,extra: params["extra"] != null ? params["extra"][0] : null,);
  });

  static void routeSettings() {
    router.define("/", handler: _splashHandlar);
    router.define("/home/:id/:extra", handler: _homeHandlar,transitionType: TransitionType.fadeIn);
    router.define("/home/:id", handler: _homeHandlar,transitionType: TransitionType.cupertino);
    router.define("/home", handler: _homeHandlar,transitionType: TransitionType.native);
  }
}
