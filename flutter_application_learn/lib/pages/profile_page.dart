import 'package:flutter/material.dart';
import 'package:flutter_application_learn/core/constants.dart';
import 'package:flutter_application_learn/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 50,
          ),
          SizedBox(
            height: kDouble10,
          ),
          Text('Muhammad Taufiq'),
          SizedBox(
            height: kDouble10,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Flutter Terapi'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('taufiq02@ar-mechatronics.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('taufiqqq.github.io'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, value, child) {
            return value ? Icon(Icons.dark_mode) : Icon(Icons.light_mode);
          },
        ),
      ),
    );
  }
}
