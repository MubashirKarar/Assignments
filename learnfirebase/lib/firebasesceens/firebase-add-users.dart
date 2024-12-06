import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseUser extends StatefulWidget {
  const FirebaseUser({super.key});
  adduser() {}

  @override
  State<FirebaseUser> createState() => _FirebaseUserState();
}

CollectionReference users = FirebaseFirestore.instance.collection('users');
adduser() async {
  await users
      .add({'name': 'mubashir', 'age': '123', 'email': 'wjhhjyuk@gmail.com'});
}

class _FirebaseUserState extends State<FirebaseUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                adduser();
              },
              child: const Text('add user'))
        ],
      ),
    );
  }
}
