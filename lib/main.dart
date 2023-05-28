import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  Homepage({super.key});
  String getCurrentDate() {
    var now = DateTime.now();
    var formatter = DateFormat('d MMMM yyyy');
    return formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    String currentDate = getCurrentDate();
    List<List<String>> gridData = [
    ['Check In', '8:30AM', 'On time', '150 pts'],
    ['Check Out', '5:30PM', 'On time', '100 pts'],
    ['Start Overtime', '5:31PM', 'Project XYZ', ''],
    ['Finish Overtime', '8:30PM', '5h', 'RM50']
  ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: const Color(0xFFF8F9FA),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Morning, Luqman",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    currentDate,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 102, 94, 94)),
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('images/profile_picture.jpeg'),
                  radius: 20,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: const Text(
                      '3',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
        // foregroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Section1(),
          Section2(),
          Section3(),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(
          elevation: 0.3,
          showUnselectedLabels: true,
          backgroundColor: Colors.green,// Set the background color of the BottomNavigationBar
          selectedItemColor: Color.fromRGBO(3, 4, 94, 1), // Set the color of the selected item
          unselectedItemColor: Colors.grey, 
            items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.time_to_leave), label: "Clock Out"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ]
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  // Section1();
  List<List<String>> gridData = [
    ['Check In', '8:30AM', 'On time', '150 pts'],
    ['Check Out', '5:30PM', 'On time', '100 pts'],
    ['Start Overtime', '5:31PM', 'Project XYZ', ''],
    ['Finish Overtime', '8:30PM', '5h', 'RM50']
  ];

  // @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: 2,
      child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.green,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10)
                  // ),
                  // color: Colors.blue,
                ),
                // SizedBox(
                //   width: 100,
                // ),
                // Container(
                //   height: 100,
                //   width: 100,
                //   color: Colors.blue,
                // )
              ],
            ),
            )
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        // height: 100,
        color: Colors.red,
      )
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
      )
    );
  }
}
