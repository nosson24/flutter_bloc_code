import 'package:flutter/material.dart';
import 'package:flutter_bloc_code/src/pages/recycle_bin.dart';
import 'package:flutter_bloc_code/src/pages/tabs_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RecycleBin.id:
        return MaterialPageRoute(
          builder: (_) => const RecycleBin(),
        );
      case TabsScreen.id:
        return MaterialPageRoute(
          builder: (_) =>  TabsScreen(),
        );
      default:
        return null;
    }
  }
}
