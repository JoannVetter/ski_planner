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
      appBar: AppBar(
        title: Text('Friends List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final friend = friends[index];
          return ListTile(
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
                    // username: friend["name"]!,
                    // email: friend["email"]!,
                    // avatarUrl: friend["avatar"]!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
