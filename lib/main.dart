import 'package:flutter/material.dart';

void main() {
  //prend un widget et et construit l'application
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final List images = [
    "https://www.pkroadparts.com/img/ybc_blog/post/5f4e012c5691d.jpg",
    "https://www.pkroadparts.com/img/cms/blog/Aprilia%20RS%20660.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My app bar"),
          backgroundColor: Colors.yellow.shade200,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.all(45),
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: HomePage(),
                ),
                Text("data"),
                Text("data2"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView(
                    children: [
                      Image.network(
                        "https://www.pkroadparts.com/img/ybc_blog/post/5f4e012c5691d.jpg",
                      ),
                      Image.network(
                        "https://www.pkroadparts.com/img/cms/blog/Aprilia%20RS%20660.jpg",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text("row2"),
            Icon(Icons.abc_outlined),
            
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.message), label: "Message"),
            NavigationDestination(icon: Icon(Icons.phone), label: "Appels"),

          ],
        )
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Hello World!ss $counter',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                //noifier a flutter counter a changer sa valeur et relance le build
                counter += 1;
              });
            },
            backgroundColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
