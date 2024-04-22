import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.pinkAccent,
          // ),
          // Image(image: NetworkImage("https://th.bing.com/th?id=OIP.NfRlVuapZjQd2aaoNUTYRQHaHa&w=250&h=250&c=8&rs=1&qlt=30&o=6&pid=3.1&rm=2")),
          Image(image: AssetImage("assets/Profile.jpg")),

          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.purpleAccent,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_circle),
              Text("Subhikshaa"),
            ],
          ),
          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.lightGreenAccent,
          // )
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call),
              Text("9999999999"),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.edit),
      ),
    );
  }
}





