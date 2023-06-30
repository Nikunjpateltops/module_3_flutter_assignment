import 'package:flutter/material.dart';

class MyContextMenu extends StatefulWidget {
  const MyContextMenu({super.key});

  @override
  State<MyContextMenu> createState() => _MyContextMenuState();
}

class _MyContextMenuState extends State<MyContextMenu> {
  //Creating a variable for controller of text editor

  final TextEditingController _name_controller = TextEditingController();

  String EnterName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Context Menu"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),

              //This is text Field widget for inputting values in application
              child: TextField(
                controller: _name_controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "  Enter Your Name",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          EnterName = _name_controller.text.toString();
                        });
                      },
                      child: const Icon(
                        Icons.arrow_circle_right,
                        color: Colors.grey,
                      ),
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "The Entered value is -->",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    EnterName,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  PopupMenuButton(
                    color: Colors.white,
                    itemBuilder: (context) {
                      return const [
                        PopupMenuItem(
                          value: 0,
                          child: Text("Edit"),
                        ),
                        PopupMenuItem(
                          value: 1,
                          child: Text("Delete"),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text("View"),
                        ),
                      ];
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
