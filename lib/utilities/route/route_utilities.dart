import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_app/src/mvp/demo_screen/demo_screen.dart';
import 'package:provider_app/src/mvp/demo_screen/demo_screen_two.dart';

import '../bloc_counter/bloc_counter_two.dart';
import '../bloc_counter/bloca.dart';

/// Manage all the routes used in the application.
class RouteUtilities {
  /// first screen to open in the application.
  static const String root = '/';

  /// splash screen.
  static const String splashScreen = '/splashScreen';

  /// user screen.
  static const String userScreen = '/userScreen';
  static const String demoScreen = '/demoScreen';
  static const String demoscreenTwo = '/demoscreenTwo';

  /// we are using named route to navigate to another screen,
  /// and while redirecting to the next screen we are using this function
  /// to pass arguements and other routing things..
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    String routeName = settings.name ?? RouteUtilities.demoScreen;

    /// this is the instance of arguements to pass data in other screens.
    dynamic arguments = settings.arguments;
    switch (routeName) {
      // case RouteUtilities.root:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const SplashScreen(),
      //   );
      // case RouteUtilities.splashScreen:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const SplashScreen(),
      //   );
      // case RouteUtilities.userScreen:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const UserScreen(),
      //   );
      case RouteUtilities.demoScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => BlocProvider<BlocCounter>(
            create: (_) => BlocCounter(),
            child: const DemoScreen(),
          ),
        );
      case RouteUtilities.demoscreenTwo:
        return MaterialPageRoute(
          builder: (BuildContext context) => BlocProvider<BlocCounterTwo>(
            create: (_) => BlocCounterTwo(),
            child: const DemoScreenTwo(),
          ),
        );
    }
    return null;
  }
}
