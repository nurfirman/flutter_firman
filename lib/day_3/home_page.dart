import 'package:flutter/material.dart';
import 'package:project_firman/day_3/login_widget.dart';

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
      appBar: AppBar(title: Text("Tugas Firman Flutter Minggu 1"),
      centerTitle: true,),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bacground_page1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //  Image.asset("assets/ic_launcher.png",width: 64,height: 64,),
            // CounterWidget(counter: counter),
              LoginWidget()
            ],
          ) 
        ),
      ),
      //floatingActionButton: FloatingActionButton(onPressed: increment,child: Icon(Icons.add),),
    );
  }
}