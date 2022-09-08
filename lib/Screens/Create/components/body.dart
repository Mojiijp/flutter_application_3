// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Screens/LogIn/login_screen.dart';
import 'package:flutter_application_3/components/already_have_an_account.dart';
import 'package:flutter_application_3/components/rounded_button.dart';
import 'package:flutter_application_3/components/rounded_input_field.dart';
import 'package:flutter_application_3/components/rounded_password_field.dart';
//import 'package:flutter_application_3/constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child : SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.fromLTRB(20, 80, 2, 2)),
              const Text(
                "Create an account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.purple
                ),
              ),
              SizedBox(height: size.height * 0.03),

              RounededInputField(
                labelText : "Email",
                hintText: "Email Address",
                onChanged: (value) {},
              ),

              RounededInputField(
                labelText: "Phone number",
                hintText: "Phone Number",
                onChanged: (value) {},
              ),

              RounededInputField(
                labelText: "Username",
                hintText: "Username",
                onChanged: (value) {},
              ),

              RoundedPasswordField(
                hintText: "Password",
                onChanged: (value) {}
              ),

              RoundedPasswordField(
                hintText: "Confirm Password",
                onChanged: (value) {}
              ),

              RoundedButton(
                text: "Create an account", 
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                }
              ),
              SizedBox(height: size.height * 0.03),
              
              AlredyHaveAnAccountCheck(
                login: false,
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

              //SignUpForm(),
            ],
          ),
        ),
      )
    );
  }
}

// class SignUpForm extends StatefulWidget {
//   const SignUpForm({Key? key}) : super(key: key);

//   @override
//   State<SignUpForm> createState() => _SignUpFormState();
// }

// class _SignUpFormState extends State<SignUpForm> {
//   final _fromKey = GlobalKey<FormState>();
//   late String email;
//   late String password;
//   late String confirm_password;
//   final List<String> errors = [];
  
//   void addError({String? error}) {
//     if (!errors.contains(error)) {
//       setState(() {
//         errors.add(error!);
//       });
//     }
//   }

//   void removeError({String? error}) {
//     if (errors.contains(error)) {
//       setState(() {
//         errors.remove(error);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         children: [
//           buildEmailFormField(),
//           BuildPasswordFormField(),
//           BuildConfPasswordFormField(),
//           RoundedButton(
//               key: _fromKey,
//               text: "Create an account", 
//               press: () {
//                 if(_fromKey.currentState!.validate()) {

//                 }
//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(
//                 //     builder: (context) {
//                 //       return const LoginScreen();
//                 //     },
//                 //   ),
//                 // );
//               }
//             ),
//         ],
//       ),
//     );
//   }

//   TextFormField BuildConfPasswordFormField() {
//     return TextFormField(
//         obscureText: true,
//         onSaved: (newValue) => confirm_password = newValue!,
//         onChanged: (value) {
//           if (password == confirm_password) {
//             removeError(error: KMatchPassError);
//           }
//           return null;
//         },
//         validator: (value) {
//           if (value!.isEmpty) {
//             return "";
//           } else if (password != confirm_password) {
//             addError(error: KMatchPassError);
//             return "";
//           }
//           return null;
//         },
//       );
//   }

//   TextFormField BuildPasswordFormField() {
//     return TextFormField(
//         obscureText: true,
//         onSaved: (newValue) => password = newValue!,
//         onChanged: (value) {
//           if (value.isNotEmpty) {
//             removeError(error: KPassNullError);
//           } else if (value.length >= 8) {
//             removeError(error: KShortPassError);
//           }
//           password = value;
//           return null;
//         },
//         validator: (value) {
//           if (value!.isEmpty) {
//             addError(error: KPassNullError);
//             return "";
//           } else if (value.length < 8) {
//             addError(error: KShortPassError);
//             return "";
//           }
//           return null;
//         },
//       );
//   }

//   TextFormField buildEmailFormField() {
//     return TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       onSaved: (newValue) => email = newValue!,
//       onChanged: (value) {
//       if (value.isNotEmpty) {
//         removeError(error: KEmailNullError);
//       } else if (emailValidatorRegExp.hasMatch(value)) {
//         removeError(error: KInvalidEmailError);
//       }
//       // ignore: avoid_returning_null_for_void
//       return null;
//       },
//       validator: (value) {
//       if (value!.isEmpty) {
//         addError(error: KEmailNullError);
//       return "";
//       } else if (!emailValidatorRegExp.hasMatch(value)) {
//         addError(error: KInvalidEmailError);
//       return "";
//       }
//       return null;
//       },
//     );
//   }
// }
