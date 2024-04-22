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
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [
          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.pinkAccent,
          // ),
          // Image(image: NetworkImage("https://th.bing.com/th?id=OIP.NfRlVuapZjQd2aaoNUTYRQHaHa&w=250&h=250&c=8&rs=1&qlt=30&o=6&pid=3.1&rm=2")),
          // Center(child: Image(image: AssetImage("assets/Profile.jpg"))),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.deepOrangeAccent,
              child: Padding(
                padding: const EdgeInsets.all(8), // Border radius
                child: CircleAvatar(
                  radius: 110,
                backgroundImage: AssetImage("assets/profile.jpg"),
                ),
              ),
            ),
          ),
          // Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.purpleAccent,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.account_circle, color: Colors.deepOrangeAccent, size: 50,),
              ),
              Text("Subhikshaa", style: TextStyle(fontSize: 25),),
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.call, color: Colors.deepOrangeAccent, size: 50,),
              ),
              Text("9999999999", style: TextStyle(fontSize: 25),),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
        },
        child: Icon(Icons.edit, color: Colors.white,),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome Page"), backgroundColor: Colors.deepOrangeAccent),
      body: Center(
        child: Text("Welcome to Second Page"),
      ),
    );
  }
}








