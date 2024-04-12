import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cupid/components/styled_button.dart';
import 'package:http/http.dart' as http;

Future<String> getUsername() async {
  final idToken = await FirebaseAuth.instance.currentUser?.getIdToken();

  final response = await http.get(
      Uri.parse('http://localhost:3000/onboarding/username?token=$idToken'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });

  if (response.statusCode == 200) {
    final username = jsonDecode(response.body)['username'];
    return username;
  } else {
    throw Exception('Failed to load username');
  }
}

class UsernameScreen extends StatelessWidget {
  UsernameScreen({super.key});

  final username = getUsername();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    ));
  }
}
