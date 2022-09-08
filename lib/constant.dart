// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

//Form Error
final RegExp emailValidatorRegExp = 
  RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String KEmailNullError = "Please Enter your email";
const String KInvalidEmailError = "Please Enter Valid Email";
const String KPassNullError = "Please Enter your password";
const String KShortPassError = "Password is too short";
const String KUsernameNullError = "Please Enter your username";
const String KMatchPassError = "Password don't match";
const String KPhoneNumberNullError = "Please Enter your phone number";