import 'package:flutter/material.dart';
import 'package:revision_24_chapter/Utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //data types
  String name = "";
  bool isButtonChange = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Image.asset(
                "assets/bird.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "welcome $name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 2)
              ]),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "enter Username",
                    labelText: "  Username",
                    border: InputBorder.none),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 2)
              ]),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "enter Password",
                  labelText: "  password",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            /*  ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoute.homeRoute);
              },
              child: Text(
                "login",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ), */
            AnimatedContainer(
              height: 30,
              width: 50,
              duration: Duration(seconds: 1),
              alignment: Alignment.center,
              child:
                  Text("login", style: TextStyle(fontWeight: FontWeight.bold)),
              decoration: BoxDecoration(color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
