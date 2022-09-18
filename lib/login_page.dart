import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final _formkey = GlobalKey<FormState>();
  String? myValue = "";
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.blueGrey.shade800,
                  Colors.blueGrey.shade900,
                ],
              ),
            ),
            child: Form(
              key: _formkey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 110.0,
                      width: 110.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 75.0,
                        color: Colors.cyan.shade600,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
                      width: 310.0,
                      child: TextFormField(
                        onChanged: (String value) {
                          myValue = username.text;
                        },
                        controller: username,
                        //decoration
                        decoration: const InputDecoration(
                          errorStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.red,
                          ),
                          labelText: "Username",
                          labelStyle: TextStyle(
                            fontSize: 25.0,
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.7,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.7,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (String? value) {
                          if (value!.isEmpty == true) {
                            return "Can't be empty!";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),

                    //second_Field
                    SizedBox(
                      width: 310.0,
                      child: TextFormField(
                        //decoration
                        decoration: const InputDecoration(
                          errorStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.red,
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 25.0,
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.7,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.7,
                            ),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        validator: (String? value) {
                          if (value!.isEmpty == true) {
                            return "Can't be empty!";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    InkWell(
                      onTap: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.of(context).pushNamed(
                            "/welcome",
                            arguments: myValue,
                          );
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: 280.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Colors.blueAccent,
                              Colors.cyanAccent.shade700,
                              Colors.cyanAccent.shade700,
                            ],
                          ),
                        ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Forget Your Password?",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 2.0,
                          width: 150.0,
                          color: Colors.white,
                        ),
                        const Text(
                          "OR",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: 2.0,
                          width: 150.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        socialMedia(Colors.blue.shade900),
                        socialMedia(Colors.cyan.shade600),
                        socialMedia(Colors.red.shade900),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container socialMedia(Color clr) {
    return Container(
      alignment: Alignment.center,
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: clr,
        shape: BoxShape.circle,
      ),
      child: const Text(
        "Social\nmedia",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
