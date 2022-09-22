import 'package:flutter/material.dart';
import 'package:myapp/screens/appscreen/appscreen.dart';
import 'package:myapp/screens/login.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 123, 112, 232),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            children: [
              Divider(
                height: 300,
              ),
              Image(
                image: AssetImage("images/1.png"),
                width: 200,
                height: 90,
              ),
              Divider(
                height: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return loginscreen();
                              },
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          120,
                          30,
                        ),
                        backgroundColor: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return appscreen();
                              },
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "As Guest",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
