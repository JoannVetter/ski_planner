import 'package:get/get.dart';
import 'package:ski_planner/views/pages/profile_page.dart';
import 'package:ski_planner/views/pages/friends_page.dart';
import 'package:ski_planner/views/pages/settings_page.dart';
import 'package:ski_planner/views/pages/trips_page.dart';

class Routes {
  static const String initialRoute = '/profile';

  static final routes = [
    GetPage(
      name: '/profile',
      page: () => const ProfilePage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: '/friends',
      page: () => const FriendsPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: '/trips',
      page: () => const TripsPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: '/settings',
      page: () => const SettingsPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
    ),
  ];
}
