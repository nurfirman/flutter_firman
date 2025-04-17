import 'package:flutter/material.dart';
import 'package:project_firman/day_3/counter_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var counter = 1;
   
   @override
  void initState() {
    counter=20;
    super.initState();
  }

  void increment (){
    setState(() {
      counter++;
    });
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/ic_launcher.png",
            width: 64,
            height: 64,
            ),
            CounterWidget(counter: counter),
          ],

        ) 
      ),
      floatingActionButton: FloatingActionButton(onPressed: increment,
      child: Icon(Icons.add),),
    );
  }
}