import 'package:ski_planner/views/widgets/navbar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        index: 0,
      ),
      backgroundColor: Colors.red,
      extendBody: true,
      extendBodyBehindAppBar: true,
    );
  }
}
