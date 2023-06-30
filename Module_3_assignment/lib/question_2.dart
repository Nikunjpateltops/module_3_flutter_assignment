import 'package:flutter/material.dart';

class MySimpleAlertDialog extends StatefulWidget {
  const MySimpleAlertDialog({super.key});

  @override
  State<MySimpleAlertDialog> createState() => _MySimpleAlertDialogState();
}

class _MySimpleAlertDialogState extends State<MySimpleAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //Creating appbar in scaffold
        appBar: AppBar(
          title: Text("Alert Dialog Screen"),
          backgroundColor: Colors.purple,
        ),

        //creating a simple body with text and an icon button
        body:

            //showing all properties in center by applying center widget as parent
            Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Click here to open Alert dialog     ---->",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      //foregroundColor: Colors.purple,
                      backgroundColor: Colors.purple),
                  onPressed: () {
                    //creating a alert dialog box in click event of elevated button
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            title: Text("Alert Dialog"),
                            actions: const [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      "This is a short description of alert dialog"),
                                  Icon(Icons.exit_to_app)
                                ],
                              )
                            ],
                          );
                        });
                  },
                  child: const Text("Click",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}
