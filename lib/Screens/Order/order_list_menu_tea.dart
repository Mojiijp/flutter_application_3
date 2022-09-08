import 'package:flutter/material.dart';

class OrderListMenuTea extends StatelessWidget {
  const OrderListMenuTea ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "This is List Menu in Tea!!!!",
          style: TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}