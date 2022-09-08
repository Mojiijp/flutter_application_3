import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child : Container(
              color: Colors.pink,
            )
          ),

          Flexible(
            flex: 1,
            child : Container(
              color: Color.fromARGB(255, 244, 54, 235),
            )
          ),

          Flexible(
            flex: 1,
            child : Container(
              color: Color.fromARGB(255, 57, 72, 233),
            )
          ),

          Flexible(
            flex: 1,
            child : Container(
              color: Color.fromARGB(255, 39, 176, 162),
            )
          ),
        ],
      )
    );
  }
}