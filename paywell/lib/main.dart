//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';
import 'package:paywell/loginpage.dart';
//import 'package:passcode_screen/passcode_screen.dart';
void main() => runApp(const Myapp());
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  //change

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Center(
          child: Column(
          
          children: [
            Image.asset('assets/paywelllogo.png'),
            ElevatedButton
            (child: Text('Lock Screen'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
          onPressed: () {
            screenLock(
            context: context,
            correctString: '1234',
);
          },)
          
          ],

          ),
        )


    )
    );
      
    
  }
}

