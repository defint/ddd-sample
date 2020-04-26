// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:web_form/presentation/screens/home_screen.dart';
import 'package:web_form/presentation/screens/second_screen.dart';
import 'package:web_form/presentation/screens/form_screen.dart';

abstract class Routes {
  static const homeScreenRoute = '/';
  static const secondScreenRoute = '/second-screen-route';
  static const formScreenRoute = '/form-screen-route';
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
        return MaterialPageRoute<dynamic>(
          builder: (_) => SecondScreen(),
          settings: settings,
        );
      case Routes.formScreenRoute:
        if (hasInvalidArgs<FormScreenArguments>(args)) {
          return misTypedArgsRoute<FormScreenArguments>(args);
        }
        final typedArgs = args as FormScreenArguments ?? FormScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => FormScreen(key: typedArgs.key, title: typedArgs.title)
              .wrappedRoute,
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

//FormScreen arguments holder class
class FormScreenArguments {
  final Key key;
  final String title;
  FormScreenArguments({this.key, this.title = "Form Screen"});
}
