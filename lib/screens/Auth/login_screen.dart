import 'package:flutter/material.dart';
import 'package:task_job/Utils/colors.dart';
import 'package:task_job/widget/textFromFieldLogin.dart';

import '../main_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsUtils.kScaffoldBackground,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Container(
                height: 350,
                width: double.infinity,
                color: ColorsUtils.kMainColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome To CSV",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 250,
                      width: double.infinity,
                      child: Image.asset("assets/images/csv_img.png"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFromFieldLogin(
              controller: emailController,
              hintText: "Email Address",
              icons: Icons.person,
            ),
            SizedBox(
              height: 20,
            ),
            TextFromFieldLogin(
              controller: passwordController,
              hintText: "Password",
              icons: Icons.lock,
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: ColorsUtils.kMainColor,
                  minimumSize: Size(370, 50),
                  shape: StadiumBorder()),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => MainScreen(),
                  ),
                );
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
