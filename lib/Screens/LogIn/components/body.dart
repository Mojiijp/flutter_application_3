// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Screens/Create/create_screen.dart';
import 'package:flutter_application_3/components/already_have_an_account.dart';
import 'package:flutter_application_3/components/rounded_button.dart';
import 'package:flutter_application_3/components/rounded_input_field.dart';
import 'package:flutter_application_3/nav.dart';

import '../../../components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child : SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.fromLTRB(20, 150, 2, 2)),
                const Text(
                  "Login to your account",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.purple
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),

                RounededInputField(
                  labelText: "Email or Username",
                  hintText: "Your Email or Username",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                
                RoundedPasswordField(
                  hintText: "Password",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                

                RoundedButton(
                  text: "Login",
                  press: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context){
                          return const Nav();
                        }
                      )
                    );
                  },
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                AlredyHaveAnAccountCheck(
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
              ]
          ),
        ),
      ),
    );
  }
}
