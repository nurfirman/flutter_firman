import 'package:flutter/material.dart';
import 'package:project_firman/main.dart';


class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

void passDialog() {
  showDialog(
    context: navigatorKey.currentState!.overlay!.context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Text('OK Login Success'),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Container( 
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        width: 250,
        child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              TextField(obscureText: false,decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'UserName'),),
              SizedBox(height: 10),
              TextField(obscureText: true,decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password'),),
              const SizedBox(height: 30),
              ElevatedButton(style: style,onPressed: passDialog,child: Text('Login')),
              ],
            ),
        
        ),
    );
  }
}