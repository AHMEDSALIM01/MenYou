import 'package:flutter/material.dart';
import 'package:menyou/Widgets/CNavbar.dart';

import '../../Widgets/MyBottomNavBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CNavbar(Icons.home, Icons.search),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://www.w3schools.com/w3images/avatar2.png'), // replace with your own image URL
          ),
          const SizedBox(height: 20),
          const Text(
            'John Doe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Software Developer',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.email),
            title: const Text('john.doe@example.com'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: const Text('+1 123 456 7890'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: const Text('123 Main St, Anytown, USA'),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}