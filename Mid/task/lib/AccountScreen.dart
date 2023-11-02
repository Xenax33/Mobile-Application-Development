import 'package:flutter/material.dart';
import 'Accounts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FriendsScreen extends StatelessWidget {
  final List<Friend> friends = [
    Friend(
      name: 'John Doe',
      email: 'john@example.com',
      imageUrl:
          'https://res.cloudinary.com/djiqxvcin/image/upload/v1690794002/mdxxczmnepedkoqo0bd8.jpg',
    ),
    Friend(
      name: 'Jane Smith',
      email: 'jane@example.com',
      imageUrl:
          'https://res.cloudinary.com/djiqxvcin/image/upload/v1690794002/mdxxczmnepedkoqo0bd8.jpg',
    ),
    Friend(
      name: 'Bob Johnson',
      email: 'bob@example.com',
      imageUrl:
          'https://res.cloudinary.com/djiqxvcin/image/upload/v1690794002/mdxxczmnepedkoqo0bd8.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final friend = friends[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(friend: friend),
                ),
              );
            },
            leading: Hero(
              tag: friend.imageUrl, // Unique tag for the Hero
              child: CachedNetworkImage(
                imageUrl: friend.imageUrl,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            title: Text(friend.name),
            subtitle: Text(friend.email),
          );
        },
      ),
    );
  }
}
