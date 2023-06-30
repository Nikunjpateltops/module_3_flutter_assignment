import 'package:flutter/material.dart';

class MyAlertBox4 extends StatefulWidget {
  const MyAlertBox4({super.key});

  @override
  State<MyAlertBox4> createState() => _MyAlertBox4State();
}

class _MyAlertBox4State extends State<MyAlertBox4> {
  //This is a list of major cities of gujarat

  List<String> cityList = [
    "Ahmedabad",
    "Gandhinagar",
    "Surat",
    "Vadodara",
    "rajkot"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert dialog screen with listview"),
        backgroundColor: Colors.purple,
      ),

      //applying center alignment to our texts and button
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Click here to see list of cities     ----> ",
                  style: TextStyle(color: Colors.black, fontSize: 16)),

              //On click event of button an alert dialog will pop up showing list
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          title: Text("Major cities of Gujarat"),
                          content: Container(
                            width: double.minPositive,
                            child: ListView.builder(
                                //applying listview builder to automatically generate list
                                shrinkWrap: true,
                                itemCount: cityList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    title: Text(cityList[index]),

                                    //Also we are adding an on tap event for every tile of list to show a detail on another alert dialog box
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            backgroundColor: Colors.purple,
                                            title: Text(
                                              cityList[index],
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                            content: const Text(
                                              "A city of Gujarat",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                }),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Tap",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
