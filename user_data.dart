import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  final String fullName;
  final String email;
  final String address;
  final bool checkBoxValue;

  const Second({
    Key? key,
    required this.fullName,
    required this.email,
    required this.address,
    required this.checkBoxValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Personal Data',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  email,
                  style: const TextStyle(fontSize: 14, color: Colors.blue),
                ),
                Text(address),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
