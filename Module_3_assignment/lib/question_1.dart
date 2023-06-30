import 'package:flutter/material.dart';

class MyToolbar extends StatelessWidget {
  const MyToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,

        // Adding a search field using TextForm-field in title
        title: Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
              decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            hintText: "  Search in field",
            hintStyle: TextStyle(color: Colors.grey),
          )),
        ),

        // This button will open a menu containing 3 values
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 0,
                  onTap: () {},
                  enabled: true,
                  child: Text("My Account"),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text("Settings"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Logout"),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
