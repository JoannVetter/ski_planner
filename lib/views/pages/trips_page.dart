
import 'package:ski_planner/views/widgets/navbar.dart';
import 'package:flutter/material.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}
class _TripsPageState extends State<TripsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        index: 2,
      ),
      backgroundColor: Colors.yellow,
      extendBody: true,
      extendBodyBehindAppBar: true,
    );
  }
}
