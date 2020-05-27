// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:learntocount/ui/views/home/home_view.dart';
import 'package:learntocount/ui/views/category/category_view.dart';

abstract class Routes {
  static const homeViewRoute = '/';
  static const categoryViewRoute = '/category-view-route';
  static const all = {
    homeViewRoute,
    categoryViewRoute,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeView(),
          settings: settings,
        );
      case Routes.categoryViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => CategoryView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
