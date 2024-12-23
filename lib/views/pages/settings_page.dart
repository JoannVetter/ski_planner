import 'package:ski_planner/views/widgets/navbar.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
const SettingsPage({super.key});

@override
State<SettingsPage> createState() => _SettingsPageState();
}
class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        index: 3,
      ),
      backgroundColor: Colors.blue,
      extendBody: true,
      extendBodyBehindAppBar: true,
    );
  }
}
