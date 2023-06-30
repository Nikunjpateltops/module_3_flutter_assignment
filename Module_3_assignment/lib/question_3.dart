import "package:flutter/material.dart";

class MyAlertBox3 extends StatelessWidget {
  const MyAlertBox3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog box 2"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        //for showing button in the center of the body
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text(
                        "Do you really want to perform this action ?"),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            // This is neutral button , Neutral button is used when user wants to proceed with the action but unnecessarily intends to cancel
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Show content"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepPurple),
                          ),
                          ElevatedButton(
                            // This is negative button when user user does not want to proceed with the action
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("No"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepPurple),
                          ),
                          ElevatedButton(
                            // This is positive button which is used when user wants to proceed with the action
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Yes"),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.deepPurple),
                          )
                        ],
                      )
                    ],
                  );
                },
              );
            },
            child: const Text(
              "Click Here to open dialog box",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ),
    );
  }
}
