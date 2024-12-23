
import 'package:ski_planner/views/widgets/navbar.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}
class _FriendsPageState extends State<FriendsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        index: 1,
      ),
      backgroundColor: Colors.green,
      extendBody: true,
      extendBodyBehindAppBar: true,
    );
  }
}
