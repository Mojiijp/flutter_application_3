import 'package:flutter/material.dart';

class OrderListMenuCoffee extends StatelessWidget {
  const OrderListMenuCoffee ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 225, 133),
        title: Text(
          "YenJiab".toUpperCase(),
          style: const TextStyle(
            fontSize: 25,
            color:  Color.fromARGB(255, 255, 160, 19)
          ),
          textAlign: TextAlign.center,
        ),
      ),
      
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ]
      ),
    );
  }
}