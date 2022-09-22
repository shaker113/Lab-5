import 'package:flutter/material.dart';
import 'package:myapp/screens/appscreen/appscreen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child: Column(
          children: [
            Divider(
              height: 150,
            ),
            Text(
              "Log In",
              style: TextStyle(fontSize: 40),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            TextField(
              inputFormatters: [],
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 123, 112, 232),
                  ),
                ),
                label: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 20, bottom: 10),
                hintText: "abc@def.com",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22), gapPadding: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 123, 112, 232), width: 1.5),
                ),
              ),
              cursorHeight: 25,
              cursorColor: Color.fromARGB(255, 123, 112, 232),
              cursorRadius: Radius.circular(3),
            ),
            Divider(
              height: 10,
              color: Colors.transparent,
            ),
            TextField(
              obscureText: true,
              inputFormatters: [],
              decoration: InputDecoration(
                label: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 20, bottom: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  gapPadding: 10,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 123, 112, 232), width: 1.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 123, 112, 232),
                  ),
                ),
              ),
              cursorHeight: 25,
              cursorColor: Color.fromARGB(255, 123, 112, 232),
              cursorRadius: Radius.circular(3),
            ),
            TextButton(onPressed: () {}, child: Text("Forgot your password?")),
            Divider(
              height: 260,
              color: Colors.transparent,
            ),
            ElevatedButton(
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
              child: Text("Log In"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(310, 45),
                backgroundColor: Color.fromARGB(255, 123, 112, 232),
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
