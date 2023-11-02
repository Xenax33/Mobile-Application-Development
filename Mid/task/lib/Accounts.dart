import 'package:flutter/material.dart';

class Friend {
  final String name;
  final String email;
  final String imageUrl;

  Friend({
    required this.name,
    required this.email,
    required this.imageUrl,
  });
}

class ProfileScreen extends StatelessWidget {
  final Friend friend;

  ProfileScreen({required this.friend});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://res.cloudinary.com/djiqxvcin/image/upload/v1696163866/famma%40gmail.com.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ProfilePhoto(
                          imageUrl:
                              friend.imageUrl), // Pass the imageUrl
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '${friend.name}',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '100 Following | 200 Followers',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            // Hire Me button action
                          },
                          child: Text('Hire Me'),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Follow button action
                          },
                          child: Text('Follow'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // Other profile content (bio, icons, buttons) can be added here
          ],
        ),
      ),
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  final String imageUrl;

  ProfilePhoto({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
