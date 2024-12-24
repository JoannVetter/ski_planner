import 'package:ski_planner/views/pages/profile_page.dart';
import 'package:ski_planner/views/widgets/navbar.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}
class _FriendsPageState extends State<FriendsPage> {

  final List<Map<String, String>> friends = [
    {"name": "Alice", "email": "alice@example.com", "avatar": "https://i.pravatar.cc/300"},
    {"name": "Bob", "email": "bob@example.com", "avatar": "https://i.pravatar.cc/200"},
    {"name": "Charlie", "email": "charlie@example.com", "avatar": "https://i.pravatar.cc/150"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(index: 1),
      appBar: AppBar(
        title: Text('My friends'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final friend = friends[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // Shadow position
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(friend["avatar"]!),
              ),
              title: Text(friend["name"]!),
              subtitle: Text(friend["email"]!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(
                      // TODO: Add properties to the ProfilePage constructor when implemented
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
