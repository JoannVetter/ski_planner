import 'package:flutter/material.dart';
import 'package:ski_planner/views/profile_page.dart';

class AppRouter {
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case profile:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
