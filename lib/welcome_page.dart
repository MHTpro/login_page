import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final String myValue = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.blueAccent,
                Colors.cyanAccent.shade700,
                Colors.cyanAccent.shade700,
              ],
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            "Welcome $myValue",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
