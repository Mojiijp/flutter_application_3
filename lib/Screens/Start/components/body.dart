import 'package:flutter/material.dart';
import 'package:flutter_application_3/Screens/Create/create_screen.dart';
import 'package:flutter_application_3/Screens/LogIn/login_screen.dart';
import 'package:flutter_application_3/components/rounded_button.dart';
import 'package:flutter_application_3/constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      height: size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(50),
                child: Text(
                  "Yen Jiab",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Positioned(
                child: Image.asset(
                  "assets/images/logo.jpg",
                  width: size.width * 0.8,
                ),
              ),
              SizedBox(height: size.height * 0.05),

              RoundedButton(
                text: "Create an account",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Createscreen();
                      },
                    ),
                  );
                },
              ),
              
              RoundedButton(
                text: "Login to my account",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
              ),
            ]),
      ),
    );
  }
}
