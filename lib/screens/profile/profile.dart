import 'package:flutter/material.dart';
import 'package:project_9/util/button/btn.dart';

import '../../util/theem/colours.dart';
import '../../util/theem/text_style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Text('Profile',style: h2HeadingTextStyle,),
        centerTitle: true,
        backgroundColor: background,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage('https://picsum.photos/200'),
          ),
          const SizedBox(height: 20),
          Text(
            'Navaneet Prajapati',
            style: h0HeadingTextStyle,
          ),
          const SizedBox(height: 10),
          const Text(
            'Software Engineer',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.email,color: Colors.black),
            title: Text('email@example.com',style: h2HeadingTextStyle),
          ),
          ListTile(
            leading: Icon(Icons.phone,color: Colors.black),
            title: Text('+91 0000000000',style: h2HeadingTextStyle,),
          ),
          const SizedBox(height: 20),
          Btn(
            name: 'Edit Profile',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
