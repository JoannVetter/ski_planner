// lib/main.dart
import 'package:flutter/material.dart';
import 'package:ski_planner/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVC Example with Router',
      initialRoute: AppRouter.profile,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
