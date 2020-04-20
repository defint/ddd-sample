// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:web_form/presentation/screens/home_screen.dart';
import 'package:web_form/presentation/screens/second_screen.dart';

abstract class Routes {
  static const homeScreenRoute = '/';
  static const secondScreenRoute = '/second-screen-route';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreenRoute:
        if (hasInvalidArgs<HomeScreenArguments>(args)) {
          return misTypedArgsRoute<HomeScreenArguments>(args);
        }
        final typedArgs = args as HomeScreenArguments ?? HomeScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(key: typedArgs.key, title: typedArgs.title)
              .wrappedRoute,
          settings: settings,
        );
      case Routes.secondScreenRoute:
        if (hasInvalidArgs<SecondScreenArguments>(args)) {
          return misTypedArgsRoute<SecondScreenArguments>(args);
        }
        final typedArgs =
            args as SecondScreenArguments ?? SecondScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              SecondScreen(key: typedArgs.key, title: typedArgs.title),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//HomeScreen arguments holder class
class HomeScreenArguments {
  final Key key;
  final String title;
  HomeScreenArguments({this.key, this.title = "Home Screen"});
}

//SecondScreen arguments holder class
class SecondScreenArguments {
  final Key key;
  final String title;
  SecondScreenArguments({this.key, this.title = "Second Screen"});
}
