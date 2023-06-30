import 'package:flutter/material.dart';

class profile_Logout_menu extends StatelessWidget {
  const profile_Logout_menu({super.key});

// this is a program to show profile and logout menu in application
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Profile and logout menu"),

        leading: const Icon(Icons.person_3_rounded),

        // This is used to show log out menu in appbar

        actions: const [Icon(Icons.logout)],
      ),
      body: const Center(
        child: Text("This is just a random text in body"),
      ),
    );
  }
}
