import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: homescreen()));
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() {
    return _homescreenState();
  }
}

class _homescreenState extends State<homescreen> {
  bool darkmode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkmode ? Colors.grey[300] : Colors.grey[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: darkmode ? Colors.white : Colors.grey[900],
                boxShadow: [
                  BoxShadow(
                    color: darkmode ? Colors.black54 : Colors.white,
                    offset: Offset(4, 4),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: darkmode ? Colors.white : Colors.black54,
                    offset: Offset(-4, -4),
                    spreadRadius: 1,
                    blurRadius: 10,
                  ),
                ]),
            child: Icon(
              darkmode ? Icons.sunny : Icons.dark_mode,
              color: darkmode ? Colors.black : Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        darkmode = false;
                      });
                    },
                    child: Text(
                      "dark",
                      style: TextStyle(
                          color: darkmode ? Colors.white : Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) =>
                                darkmode ? Colors.black : Colors.white))),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      darkmode = true;
                    });
                  },
                  child: Text(
                    "light",
                    style: TextStyle(
                        color: darkmode ? Colors.black : Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => darkmode ? Colors.white : Colors.black)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
