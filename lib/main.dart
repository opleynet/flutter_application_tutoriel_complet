import 'package:flutter/material.dart';

void main() {
  //prend un widget et et construit l'application
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My app bar"),
          backgroundColor: Colors.yellow.shade200,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Row(
            children: [
              Text(
                'Hello World!ss $counter',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              FloatingActionButton(onPressed: (){
                
                setState(() {
                  //noifier a flutter counter a changer sa valeur et relance le build
                  counter +=1;
                });
              })
            ],
          ),
        );
  }
}
