import 'dart:convert';
import 'dart:ui';

import 'package:cupid/components/styled_button.dart';
import 'package:cupid/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  late Future<String> username;

  @override
  void initState() {
    super.initState();
    username = getUsername();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 24,
                    fontVariations: [
                      FontVariation.weight(300),
                    ],
                  ),
                ),
                FutureBuilder<String>(
                  future: username,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${snapshot.data}',
                              style: const TextStyle(fontSize: 28),
                            ),
                            const Text(
                              'This is your username, by which you will be known on Cupid.',
                              style: TextStyle(
                                fontSize: 16,
                                fontVariations: [FontVariation.weight(300)],
                              ),
                            ),
                          ]);
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    return const CircularProgressIndicator();
                  },
                ),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color(0x80e94057),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://robohash.org/${FirebaseAuth.instance.currentUser?.uid}.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Spacer(),
                const SizedBox(height: 16),
                StyledButton(
                    text: "Continue",
                    onTap: () {
                      navigatorKey.currentState!.pushReplacementNamed('/home');
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
