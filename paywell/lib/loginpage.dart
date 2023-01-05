import 'package:flutter/material.dart';
import 'package:paywell/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        //Image Logo
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Center(
            child: Image.asset('assets/paywelllogo.png'),
          ),
        ),

        // Text Filed
        Container(
          padding: const EdgeInsets.fromLTRB(40, 100, 40, 0),
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 2,
                child: TextField(
                  controller: TextEditingController(text: "+880"),
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(241, 90, 36, 1)),
                      ),
                      labelText: 'Country',
                      hintText: 'Country'),
                ),
              ),
              Spacer(flex: 1),
              const Flexible(
                flex: 8,
                child: TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(241, 90, 36, 1)),
                      ),
                      labelText: 'Enter your mobile number',
                      hintText: 'Enter your mobile number'),
                ),
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.fromLTRB(40, 300, 40, 0),
          width: double.infinity,
          child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.fromLTRB(0, 15, 0, 15)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)))),
              onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    )
                  },
              child: Text("Continue".toUpperCase(),
                  style: const TextStyle(fontSize: 14))),
        )
      ]),
    ));
  }
}
